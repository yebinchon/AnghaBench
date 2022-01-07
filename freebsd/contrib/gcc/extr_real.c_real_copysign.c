
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sign; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;



void
real_copysign (REAL_VALUE_TYPE *r, const REAL_VALUE_TYPE *x)
{
  r->sign = x->sign;
}
