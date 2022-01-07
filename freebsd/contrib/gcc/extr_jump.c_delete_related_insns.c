
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 scalar_t__ ADDR_DIFF_VEC ;
 scalar_t__ ADDR_VEC ;
 int BARRIER ;
 scalar_t__ BARRIER_P (scalar_t__) ;
 scalar_t__ CALL_P (scalar_t__) ;
 int CODE_LABEL ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ INSN_DELETED_P (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ JUMP_LABEL (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ LABEL_NUSES (scalar_t__) ;
 int LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 int NOTE ;
 scalar_t__ NOTE_INSN_FUNCTION_END ;
 scalar_t__ NOTE_LINE_NUMBER (scalar_t__) ;
 scalar_t__ NOTE_P (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ REG_LABEL ;
 scalar_t__ REG_NOTES (scalar_t__) ;
 scalar_t__ REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ XVECEXP (scalar_t__,int,int) ;
 int XVECLEN (scalar_t__,int) ;
 int delete_insn (scalar_t__) ;
 scalar_t__ tablejump_p (scalar_t__,int *,scalar_t__*) ;

rtx
delete_related_insns (rtx insn)
{
  int was_code_label = (LABEL_P (insn));
  rtx note;
  rtx next = NEXT_INSN (insn), prev = PREV_INSN (insn);

  while (next && INSN_DELETED_P (next))
    next = NEXT_INSN (next);


  if (INSN_DELETED_P (insn))
    return next;

  delete_insn (insn);




  if (next != 0 && BARRIER_P (next))
    delete_insn (next);




  if (JUMP_P (insn) && JUMP_LABEL (insn))
    {
      rtx lab = JUMP_LABEL (insn), lab_next;

      if (LABEL_NUSES (lab) == 0)
 {



   delete_related_insns (lab);





   while (next && INSN_DELETED_P (next))
     next = NEXT_INSN (next);
   return next;
 }
      else if (tablejump_p (insn, ((void*)0), &lab_next))
 {




   delete_related_insns (lab_next);
 }
    }



  if (JUMP_P (insn)
      && (GET_CODE (PATTERN (insn)) == ADDR_VEC
   || GET_CODE (PATTERN (insn)) == ADDR_DIFF_VEC))
    {
      rtx pat = PATTERN (insn);
      int i, diff_vec_p = GET_CODE (pat) == ADDR_DIFF_VEC;
      int len = XVECLEN (pat, diff_vec_p);

      for (i = 0; i < len; i++)
 if (LABEL_NUSES (XEXP (XVECEXP (pat, diff_vec_p, i), 0)) == 0)
   delete_related_insns (XEXP (XVECEXP (pat, diff_vec_p, i), 0));
      while (next && INSN_DELETED_P (next))
 next = NEXT_INSN (next);
      return next;
    }


  if (NONJUMP_INSN_P (insn) || CALL_P (insn))
    for (note = REG_NOTES (insn); note; note = XEXP (note, 1))
      if (REG_NOTE_KIND (note) == REG_LABEL

   && LABEL_P (XEXP (note, 0)))
 if (LABEL_NUSES (XEXP (note, 0)) == 0)
   delete_related_insns (XEXP (note, 0));

  while (prev && (INSN_DELETED_P (prev) || NOTE_P (prev)))
    prev = PREV_INSN (prev);





  if (was_code_label
      && NEXT_INSN (insn) != 0
      && JUMP_P (NEXT_INSN (insn))
      && (GET_CODE (PATTERN (NEXT_INSN (insn))) == ADDR_VEC
   || GET_CODE (PATTERN (NEXT_INSN (insn))) == ADDR_DIFF_VEC))
    next = delete_related_insns (NEXT_INSN (insn));



  if (was_code_label && prev && BARRIER_P (prev))
    {
      enum rtx_code code;
      while (next)
 {
   code = GET_CODE (next);
   if (code == NOTE
       && NOTE_LINE_NUMBER (next) != NOTE_INSN_FUNCTION_END)
     next = NEXT_INSN (next);

   else if (code == CODE_LABEL && INSN_DELETED_P (next))
     next = NEXT_INSN (next);
   else if (code == BARRIER || INSN_P (next))




     next = delete_related_insns (next);
   else
     break;
 }
    }

  return next;
}
