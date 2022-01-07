
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parms_set_data {int nregs; int regs; } ;
typedef scalar_t__ rtx ;


 scalar_t__ CALL_INSN_FUNCTION_USAGE (scalar_t__) ;
 scalar_t__ CALL_P (scalar_t__) ;
 int CLEAR_HARD_REG_SET (int ) ;
 scalar_t__ FIRST_PSEUDO_REGISTER ;
 int FUNCTION_ARG_REGNO_P (scalar_t__) ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ REGNO (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 int SET_HARD_REG_BIT (int ,scalar_t__) ;
 scalar_t__ USE ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int gcc_assert (int) ;
 int note_stores (int ,int ,struct parms_set_data*) ;
 int parms_set ;

rtx
find_first_parameter_load (rtx call_insn, rtx boundary)
{
  struct parms_set_data parm;
  rtx p, before, first_set;




  CLEAR_HARD_REG_SET (parm.regs);
  parm.nregs = 0;
  for (p = CALL_INSN_FUNCTION_USAGE (call_insn); p; p = XEXP (p, 1))
    if (GET_CODE (XEXP (p, 0)) == USE
 && REG_P (XEXP (XEXP (p, 0), 0)))
      {
 gcc_assert (REGNO (XEXP (XEXP (p, 0), 0)) < FIRST_PSEUDO_REGISTER);



 if (!FUNCTION_ARG_REGNO_P (REGNO (XEXP (XEXP (p, 0), 0))))
   continue;

 SET_HARD_REG_BIT (parm.regs, REGNO (XEXP (XEXP (p, 0), 0)));
 parm.nregs++;
      }
  before = call_insn;
  first_set = call_insn;


  while (parm.nregs && before != boundary)
    {
      before = PREV_INSN (before);



      if (CALL_P (before))
 break;





      if (LABEL_P (before))
 {
   gcc_assert (before == boundary);
   break;
 }

      if (INSN_P (before))
 {
   int nregs_old = parm.nregs;
   note_stores (PATTERN (before), parms_set, &parm);




   if (nregs_old != parm.nregs)
     first_set = before;
   else
     break;
 }
    }
  return first_set;
}
