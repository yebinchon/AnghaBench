
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPEN_READ ;
 scalar_t__ input_avail () ;
 int midi_input_intr (int ,unsigned char) ;
 int my_dev ;
 int uart6850_opened ;
 unsigned char uart6850_read () ;

__attribute__((used)) static void uart6850_input_loop(void)
{
 int count = 10;

 while (count)
 {



  if (input_avail())
  {
   unsigned char c = uart6850_read();
   count = 100;
   if (uart6850_opened & OPEN_READ)
    midi_input_intr(my_dev, c);
  }
  else
  {
   while (!input_avail() && count)
    count--;
  }
 }
}
