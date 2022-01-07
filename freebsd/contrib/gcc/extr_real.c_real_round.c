
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_10__ {int sign; } ;
typedef TYPE_1__ REAL_VALUE_TYPE ;


 int VOIDmode ;
 int dconsthalf ;
 int do_add (TYPE_1__*,TYPE_1__ const*,int *,int ) ;
 int do_fix_trunc (TYPE_1__*,TYPE_1__*) ;
 int real_convert (TYPE_1__*,int,TYPE_1__*) ;

void
real_round (REAL_VALUE_TYPE *r, enum machine_mode mode,
     const REAL_VALUE_TYPE *x)
{
  do_add (r, x, &dconsthalf, x->sign);
  do_fix_trunc (r, r);
  if (mode != VOIDmode)
    real_convert (r, mode, r);
}
