
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (int ,int ) ;
 int XVECEXP (scalar_t__,int ,int) ;
 int XVECLEN (scalar_t__,int ) ;
 int use_reg (scalar_t__*,scalar_t__) ;

void
use_group_regs (rtx *call_fusage, rtx regs)
{
  int i;

  for (i = 0; i < XVECLEN (regs, 0); i++)
    {
      rtx reg = XEXP (XVECEXP (regs, 0, i), 0);




      if (reg != 0 && REG_P (reg))
 use_reg (call_fusage, reg);
    }
}
