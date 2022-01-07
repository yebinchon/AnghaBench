
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 int NULL_RTX ;
 scalar_t__ PARALLEL ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SET ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int const2_rtx ;
 int gen_add3_insn (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int pc_rtx ;
 int word_mode ;

__attribute__((used)) static rtx
discover_flags_reg (void)
{
  rtx tmp;
  tmp = gen_rtx_REG (word_mode, 10000);
  tmp = gen_add3_insn (tmp, tmp, const2_rtx);



  if (GET_CODE (tmp) == SET)
    return NULL_RTX;
  else if (GET_CODE (tmp) == PARALLEL)
    {
      int found;

      if (XVECLEN (tmp, 0) != 2)
 return pc_rtx;
      tmp = XVECEXP (tmp, 0, 1);
      if (GET_CODE (tmp) != CLOBBER)
 return pc_rtx;
      tmp = XEXP (tmp, 0);




      if (GET_CODE (tmp) == SUBREG
   && REG_P (SUBREG_REG (tmp))
   && REGNO (SUBREG_REG (tmp)) < FIRST_PSEUDO_REGISTER)
 return pc_rtx;
      found = (REG_P (tmp) && REGNO (tmp) < FIRST_PSEUDO_REGISTER);

      return (found ? tmp : NULL_RTX);
    }

  return pc_rtx;
}
