require_relative 'reservation'

class Block < Reservation

  attr_reader :number_of_rooms, :discount, :rooms

  def initialize(check_in, check_out, number_of_rooms)
    super(check_in, check_out)
    @number_of_rooms = number_of_rooms
    case number_of_rooms
    when 2
      discount = 0.05 * PRICE
    when 3
      discount = 0.1 * PRICE
    when 4
      discount = 0.15 * PRICE
    when 5
      discount = 0.2 * PRICE
    end
    @discount = discount
    @cost -= @discount
    @rooms = {}
  end
end