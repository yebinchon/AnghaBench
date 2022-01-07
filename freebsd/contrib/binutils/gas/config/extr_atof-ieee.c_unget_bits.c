
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LITTLENUM_NUMBER_OF_BITS ;
 int bits_left_in_littlenum ;
 int littlenum_pointer ;
 int littlenums_left ;

__attribute__((used)) static void
unget_bits (int num)
{
  if (!littlenums_left)
    {
      ++littlenum_pointer;
      ++littlenums_left;
      bits_left_in_littlenum = num;
    }
  else if (bits_left_in_littlenum + num > LITTLENUM_NUMBER_OF_BITS)
    {
      bits_left_in_littlenum =
 num - (LITTLENUM_NUMBER_OF_BITS - bits_left_in_littlenum);
      ++littlenum_pointer;
      ++littlenums_left;
    }
  else
    bits_left_in_littlenum += num;
}
