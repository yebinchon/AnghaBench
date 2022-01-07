
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int ) ;
 int trunc_int_for_mode (int ,int) ;

rtx
gen_int_mode (HOST_WIDE_INT c, enum machine_mode mode)
{
  return GEN_INT (trunc_int_for_mode (c, mode));
}
