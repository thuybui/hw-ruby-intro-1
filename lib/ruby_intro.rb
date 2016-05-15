def sum arr
   return 0 if arr.empty?
   arr.inject(:+)
end

def max_2_sum arr
  sum arr.sort.pop(2)
end

def sum_to_n? arr, n
  arr.combination(2).each {|c| return true if (c[0] + c[1] == n)}
  false
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[a-z&&[^aeiou]]/i
end

def binary_multiple_of_4? s
    return false unless s =~ /^[01]+$/
    s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
    def initialize(isbn, price)
      raise ArgumentError if isbn.empty?
      raise ArgumentError if price <= 0
      @isbn = isbn
      @price = price
    end
    attr_accessor :isbn
    attr_accessor :price
    def price_as_string
        "$#{sprintf("%.2f",@price)}"
    end
end
  