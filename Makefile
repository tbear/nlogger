#CXX=g++

CXXFLAGS:=${CFLAGS} -Wall -g 

TARGET = nlogger

OBJS = logger.o

LIBS = -L${ROOT}/usr/lib

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) ${CXXFLAGS} -o $(TARGET) $(OBJS)  $(LIBS)

clean:
	rm -f $(OBJS) $(TARGET)

