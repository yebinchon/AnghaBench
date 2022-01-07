
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 scalar_t__ PARALLEL ;
 unsigned int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SET ;
 int SET_DEST (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 unsigned int** hard_regno_nregs ;

__attribute__((used)) static int
hard_reg_set_here_p (unsigned int beg_regno, unsigned int end_regno, rtx x)
{
  if (GET_CODE (x) == SET || GET_CODE (x) == CLOBBER)
    {
      rtx op0 = SET_DEST (x);

      while (GET_CODE (op0) == SUBREG)
 op0 = SUBREG_REG (op0);
      if (REG_P (op0))
 {
   unsigned int r = REGNO (op0);


   if (r < end_regno
       && r + hard_regno_nregs[r][GET_MODE (op0)] > beg_regno)
     return 1;
 }
    }
  else if (GET_CODE (x) == PARALLEL)
    {
      int i = XVECLEN (x, 0) - 1;

      for (; i >= 0; i--)
 if (hard_reg_set_here_p (beg_regno, end_regno, XVECEXP (x, 0, i)))
   return 1;
    }

  return 0;
}
