def basic_calculator

	puts "Choose your first number?"
	number_1 = gets

	puts "What would you like to do? Add, Subtract, Divide, Multiply?"
	operator = gets.chomp

	puts "Choose your second number?"
	number_2 = gets

	case operator
	when "Add"
		result = number_1.to_f + number_2.to_f
		
	when "Subtract"
		result = number_1.to_f - number_2.to_f

	when "Divide"
		result = number_1.to_f / number_2.to_f
		
	when "Multiply"
		result = number_1.to_f * number_2.to_f
		# puts result.round(2)
		# type_calculator
	else
		puts "Sorry that is invalid!"
		
	end
	puts result.round(2) if result
	
end


def scientific_calculator
	puts "Choose your first number?"
	number_1 = gets

	puts "What would you like to do? Power or Square_root?"
	operator = gets.chomp

	case operator
	when "Power"
		puts "Choose your second number?"
		number_2 = gets
		result = number_1.to_f ** number_2.to_f
		puts result.round(2)
		
	when "Square_root"
		result = Math.sqrt(number_1.to_f)
		puts result.round(2)
		
	else
		puts "Sorry that is invalid!"
		
	end
end


def bmi
	puts "Would you like to use Imperial or Metric units?"
	units = gets.chomp

	case units
	when "Metric" 
		puts "What is your weight in kg?"
		weight = gets
		puts "What is your height in metres?"
		height = gets
		body_mass_index = weight.to_f / (height.to_f ** 2)
		puts body_mass_index.round(2)
		
	when "Imperial"
		puts "What is your weight in pounds?"
		weight = gets
		puts "What is your height in inches?"
		height = gets
		body_mass_index = (weight.to_f / (height.to_f ** 2)) * 703
		puts body_mass_index.round(2)
		
	else
		puts "That is invalid."
		
	end
end

def mortgage
	puts "What is your monthly interest rate (%)?"
	monthly_interest_rate = gets

	puts "Number of payments on your loan?"
	number_of_payments = gets

	puts "What is your principle loan?"
	principle_loan = gets

	# 1+r ^n
	rate = monthly_interest_rate.to_f / 100
	val = (1 + rate) ** number_of_payments.to_f

	monthly_payment = principle_loan.to_f * ((rate * val) / (val - 1))
	puts "£" + monthly_payment.round(2).to_s
	

end

def type_calculator
	play = true

	while play
		puts "What Calculator would you like to use? Basic, Scientific, BMI or Mortgage? or Quit?"
		type = gets.chomp

		case type
		when "Basic"
			basic_calculator
		when "Scientific"
			scientific_calculator
		when "BMI"
			bmi
		when "Mortgage"
			mortgage
		when "Quit"
			puts "Goodbye!"
			play = false
		else
			puts "That's not an option"
		end
	end
end

type_calculator
