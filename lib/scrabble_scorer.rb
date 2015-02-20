class String



def scrabble_count # return the scrabble score of any given word
  @one_point = ["A", "E", "I", "O", "U", "L", "N", "S", "T", "R"]
@two_points = ["D", "G"]
@three_points = ["B", "C", "M", "P"]
@four_points = ["F", "H", "V", "W", "Y"]
@five_points = ["K"]
@eight_points = ["J", "X"]
@ten_points = ["Q", "Z"]

@point = 0
  self.chars.each do |letter|
    if @one_point.include?(letter)
      @point += 1
    elsif @two_points.include?(letter)
      @point += 2
    elsif @three_points.include?(letter)
      @point += 3
    elsif @four_points.include?(letter)
      @point += 4
    elsif @five_points.include?(letter)
      @point += 5
    elsif @eight_points.include?(letter)
      @point += 8
    elsif @ten_points.include?(letter)
      @point += 10
    end
  end
  @point
end


end

file = File.new("word_list.txt", "r")

file.open
file.close