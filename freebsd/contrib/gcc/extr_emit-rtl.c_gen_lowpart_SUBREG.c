
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int VOIDmode ;
 int gen_rtx_SUBREG (int,int ,int ) ;
 int subreg_lowpart_offset (int,int) ;

rtx
gen_lowpart_SUBREG (enum machine_mode mode, rtx reg)
{
  enum machine_mode inmode;

  inmode = GET_MODE (reg);
  if (inmode == VOIDmode)
    inmode = mode;
  return gen_rtx_SUBREG (mode, reg,
    subreg_lowpart_offset (mode, inmode));
}
