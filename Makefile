CC = g++
VERSION = -std=c++11

VPATH = src/
# compiler flags:
#  -g     - this flag adds debugging information to the executable file
#  -Wall  - this flag is used to turn on most compiler warnings
CFLAGS  = -g -Wall
LIBS = -lsfml-graphics -lsfml-window -lsfml-system

sources = main.cpp Game.cpp
OBJS = $(sources:.cpp=.o)

# The build target 
TARGET = game

$(TARGET): $(OBJS)
	$(CC) $(VERSION) $(CFLAGS) $(LIBS) $(OBJS) -o $(TARGET)

main.o: main.cpp
	$(CC) $(VERSION) $(CFLAGS) -c $<

Game.o: Game.cpp
	$(CC) $(VERSION) $(CFLAGS) -c $<

clean:
	rm game *.o