
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long udivmodsi4 (long,long,int ) ;

long
__udivsi3 (long a, long b)
{
  return udivmodsi4 (a, b, 0);
}
