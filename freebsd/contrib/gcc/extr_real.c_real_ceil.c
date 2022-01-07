
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_12__ {int sign; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int VOIDmode ;
 int dconst1 ;
 int do_add (TYPE_1__*,TYPE_1__*,int *,int ) ;
 int do_fix_trunc (TYPE_1__*,TYPE_1__ const*) ;
 int real_convert (TYPE_1__*,int,TYPE_1__*) ;
 int real_identical (TYPE_1__*,TYPE_1__ const*) ;

void
real_ceil (REAL_VALUE_TYPE *r, enum machine_mode mode,
    const REAL_VALUE_TYPE *x)
{
  REAL_VALUE_TYPE t;

  do_fix_trunc (&t, x);
  if (! real_identical (&t, x) && ! x->sign)
    do_add (&t, &t, &dconst1, 0);
  if (mode != VOIDmode)
    real_convert (r, mode, &t);
  else
    *r = t;
}
