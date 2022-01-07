
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 int VOIDmode ;
 int gcc_assert (int) ;
 int gen_rtx_EXPR_LIST (int ,int ,int ) ;
 int gen_rtx_USE (int ,int ) ;

void
use_reg (rtx *call_fusage, rtx reg)
{
  gcc_assert (REG_P (reg) && REGNO (reg) < FIRST_PSEUDO_REGISTER);

  *call_fusage
    = gen_rtx_EXPR_LIST (VOIDmode,
    gen_rtx_USE (VOIDmode, reg), *call_fusage);
}
