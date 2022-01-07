
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int
atc_get_pitch(unsigned int input_rate, unsigned int output_rate)
{
 unsigned int pitch;
 int b;


 pitch = (input_rate / output_rate) << 24;
 input_rate %= output_rate;
 input_rate /= 100;
 output_rate /= 100;
 for (b = 31; ((b >= 0) && !(input_rate >> b)); )
  b--;

 if (b >= 0) {
  input_rate <<= (31 - b);
  input_rate /= output_rate;
  b = 24 - (31 - b);
  if (b >= 0)
   input_rate <<= b;
  else
   input_rate >>= -b;

  pitch |= input_rate;
 }

 return pitch;
}
