
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HOST_WIDE_INT ;



__attribute__((used)) static int
count_insns_for_constant (HOST_WIDE_INT remainder, int i)
{
  HOST_WIDE_INT temp1;
  int num_insns = 0;
  do
    {
      int end;

      if (i <= 0)
 i += 32;
      if (remainder & (3 << (i - 2)))
 {
   end = i - 8;
   if (end < 0)
     end += 32;
   temp1 = remainder & ((0x0ff << end)
        | ((i < end) ? (0xff >> (32 - end)) : 0));
   remainder &= ~temp1;
   num_insns++;
   i -= 6;
 }
      i -= 2;
    } while (remainder);
  return num_insns;
}
