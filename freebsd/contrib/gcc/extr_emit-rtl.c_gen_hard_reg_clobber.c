
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int VOIDmode ;
 scalar_t__ gen_rtx_CLOBBER (int ,int ) ;
 int gen_rtx_REG (int,unsigned int) ;
 scalar_t__** hard_reg_clobbers ;

rtx
gen_hard_reg_clobber (enum machine_mode mode, unsigned int regno)
{
  if (hard_reg_clobbers[mode][regno])
    return hard_reg_clobbers[mode][regno];
  else
    return (hard_reg_clobbers[mode][regno] =
     gen_rtx_CLOBBER (VOIDmode, gen_rtx_REG (mode, regno)));
}
