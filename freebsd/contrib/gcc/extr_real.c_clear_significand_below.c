
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long* sig; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 unsigned int HOST_BITS_PER_LONG ;

__attribute__((used)) static void
clear_significand_below (REAL_VALUE_TYPE *r, unsigned int n)
{
  int i, w = n / HOST_BITS_PER_LONG;

  for (i = 0; i < w; ++i)
    r->sig[i] = 0;

  r->sig[w] &= ~(((unsigned long)1 << (n % HOST_BITS_PER_LONG)) - 1);
}
