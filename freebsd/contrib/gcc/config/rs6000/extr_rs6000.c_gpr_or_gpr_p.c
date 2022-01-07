
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ INT_REGNO_P (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;

bool
gpr_or_gpr_p (rtx op0, rtx op1)
{
  return ((REG_P (op0) && INT_REGNO_P (REGNO (op0)))
   || (REG_P (op1) && INT_REGNO_P (REGNO (op1))));
}
