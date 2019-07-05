all: sum

sum: main.o sum.o
	g++ -o sum main.o sum.o

main.o: main.cpp sum.h
	g++ -c -o main.o main.cpp

sum.o : sum.cpp sum.h
	g++ -c -o sum.o sum.cpp

clean:
	rm -f sum.o main.o sum

