
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_BYTE (int ) ;
 int SUBREG_REG (int ) ;
 scalar_t__* reg_renumber ;
 scalar_t__ subreg_offset_representable_p (int,int ,int ,int ) ;
 int subreg_regno_offset (int,int ,int ,int ) ;

int
true_regnum (rtx x)
{
  if (REG_P (x))
    {
      if (REGNO (x) >= FIRST_PSEUDO_REGISTER && reg_renumber[REGNO (x)] >= 0)
 return reg_renumber[REGNO (x)];
      return REGNO (x);
    }
  if (GET_CODE (x) == SUBREG)
    {
      int base = true_regnum (SUBREG_REG (x));
      if (base >= 0
   && base < FIRST_PSEUDO_REGISTER
   && subreg_offset_representable_p (REGNO (SUBREG_REG (x)),
         GET_MODE (SUBREG_REG (x)),
         SUBREG_BYTE (x), GET_MODE (x)))
 return base + subreg_regno_offset (REGNO (SUBREG_REG (x)),
        GET_MODE (SUBREG_REG (x)),
        SUBREG_BYTE (x), GET_MODE (x));
    }
  return -1;
}
