
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CLOBBER ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ PARALLEL ;
 int PATTERN (int ) ;
 scalar_t__ SET ;
 scalar_t__ USE ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 scalar_t__ flag_non_call_exceptions ;
 scalar_t__ may_trap_p (int ) ;
 int set_live_p (int ,int ,int*) ;

__attribute__((used)) static bool
insn_live_p (rtx insn, int *counts)
{
  int i;
  if (flag_non_call_exceptions && may_trap_p (PATTERN (insn)))
    return 1;
  else if (GET_CODE (PATTERN (insn)) == SET)
    return set_live_p (PATTERN (insn), insn, counts);
  else if (GET_CODE (PATTERN (insn)) == PARALLEL)
    {
      for (i = XVECLEN (PATTERN (insn), 0) - 1; i >= 0; i--)
 {
   rtx elt = XVECEXP (PATTERN (insn), 0, i);

   if (GET_CODE (elt) == SET)
     {
       if (set_live_p (elt, insn, counts))
  return 1;
     }
   else if (GET_CODE (elt) != CLOBBER && GET_CODE (elt) != USE)
     return 1;
 }
      return 0;
    }
  else
    return 1;
}
