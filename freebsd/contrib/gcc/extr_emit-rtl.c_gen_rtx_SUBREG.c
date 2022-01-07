
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int gcc_assert (int ) ;
 int gen_rtx_raw_SUBREG (int,int ,int) ;
 int validate_subreg (int,int ,int ,int) ;

rtx
gen_rtx_SUBREG (enum machine_mode mode, rtx reg, int offset)
{
  gcc_assert (validate_subreg (mode, GET_MODE (reg), reg, offset));
  return gen_rtx_raw_SUBREG (mode, reg, offset);
}
