
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mix_write (int,int) ;

__attribute__((used)) static int
mixer_output(int right_vol, int left_vol, int div, int bits,
      int mixer)
{
 int left = left_vol * div / 100;
 int right = right_vol * div / 100;


 if (bits & 0x10)
   {
    left |= mixer;
    right |= mixer;
   }
 if (bits == 0x03 || bits == 0x04)
   {
    mix_write(0x80 | bits, 0x078B);
    mix_write(left, 0x078B);
    right_vol = left_vol;
 } else
   {
    mix_write(0x80 | 0x20 | bits, 0x078B);
    mix_write(left, 0x078B);
    mix_write(0x80 | 0x40 | bits, 0x078B);
    mix_write(right, 0x078B);
   }

 return (left_vol | (right_vol << 8));
}
