
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long __udivdi3 (unsigned long long,unsigned long long) ;

unsigned long long
__gnu_uldivmod_helper (unsigned long long a,
         unsigned long long b,
         unsigned long long *remainder)
{
  unsigned long long quotient;

  quotient = __udivdi3 (a, b);
  *remainder = a - b * quotient;
  return quotient;
}
