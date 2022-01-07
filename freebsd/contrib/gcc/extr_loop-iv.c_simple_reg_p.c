
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int ) ;
 scalar_t__ HARD_REGISTER_NUM_P (unsigned int) ;
 scalar_t__ MODE_INT ;
 unsigned int REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int subreg_lowpart_p (int ) ;

__attribute__((used)) static bool
simple_reg_p (rtx reg)
{
  unsigned r;

  if (GET_CODE (reg) == SUBREG)
    {
      if (!subreg_lowpart_p (reg))
 return 0;
      reg = SUBREG_REG (reg);
    }

  if (!REG_P (reg))
    return 0;

  r = REGNO (reg);
  if (HARD_REGISTER_NUM_P (r))
    return 0;

  if (GET_MODE_CLASS (GET_MODE (reg)) != MODE_INT)
    return 0;

  return 1;
}
