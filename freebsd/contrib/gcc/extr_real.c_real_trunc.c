
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 int VOIDmode ;
 int do_fix_trunc (int *,int const*) ;
 int real_convert (int *,int,int *) ;

void
real_trunc (REAL_VALUE_TYPE *r, enum machine_mode mode,
     const REAL_VALUE_TYPE *x)
{
  do_fix_trunc (r, x);
  if (mode != VOIDmode)
    real_convert (r, mode, r);
}
