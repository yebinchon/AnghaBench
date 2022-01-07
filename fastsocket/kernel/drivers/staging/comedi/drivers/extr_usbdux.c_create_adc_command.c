
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int8_t ;



__attribute__((used)) static int8_t create_adc_command(unsigned int chan, int range)
{
 int8_t p = (range <= 1);
 int8_t r = ((range % 2) == 0);
 return (chan << 4) | ((p == 1) << 2) | ((r == 1) << 3);
}
