
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CLOBBER ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 unsigned int REGNO (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ SET ;
 int XEXP (int ,int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int gcc_assert (int) ;
 unsigned int** hard_regno_nregs ;
 scalar_t__ reg_inc_found_and_valid_p (unsigned int,unsigned int,int ) ;

int
regno_clobbered_p (unsigned int regno, rtx insn, enum machine_mode mode,
     int sets)
{
  unsigned int nregs, endregno;


  gcc_assert (regno < FIRST_PSEUDO_REGISTER);

  nregs = hard_regno_nregs[regno][mode];
  endregno = regno + nregs;

  if ((GET_CODE (PATTERN (insn)) == CLOBBER
       || (sets == 1 && GET_CODE (PATTERN (insn)) == SET))
      && REG_P (XEXP (PATTERN (insn), 0)))
    {
      unsigned int test = REGNO (XEXP (PATTERN (insn), 0));

      return test >= regno && test < endregno;
    }

  if (sets == 2 && reg_inc_found_and_valid_p (regno, endregno, insn))
    return 1;

  if (GET_CODE (PATTERN (insn)) == PARALLEL)
    {
      int i = XVECLEN (PATTERN (insn), 0) - 1;

      for (; i >= 0; i--)
 {
   rtx elt = XVECEXP (PATTERN (insn), 0, i);
   if ((GET_CODE (elt) == CLOBBER
        || (sets == 1 && GET_CODE (PATTERN (insn)) == SET))
       && REG_P (XEXP (elt, 0)))
     {
       unsigned int test = REGNO (XEXP (elt, 0));

       if (test >= regno && test < endregno)
  return 1;
     }
   if (sets == 2
       && reg_inc_found_and_valid_p (regno, endregno, elt))
     return 1;
 }
    }

  return 0;
}
