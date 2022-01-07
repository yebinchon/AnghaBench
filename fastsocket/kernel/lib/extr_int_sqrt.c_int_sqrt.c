
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BITS_PER_LONG ;

unsigned long int_sqrt(unsigned long x)
{
 unsigned long op, res, one;

 op = x;
 res = 0;

 one = 1UL << (BITS_PER_LONG - 2);
 while (one > op)
  one >>= 2;

 while (one != 0) {
  if (op >= res + one) {
   op = op - (res + one);
   res = res + 2 * one;
  }
  res /= 2;
  one /= 4;
 }
 return res;
}
