
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ CLOBBER ;
 scalar_t__ CODE_FOR_stack_tie ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INSN_CODE (scalar_t__) ;
 scalar_t__ JUMP_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ NULL_RTX ;
 int PATTERN (scalar_t__) ;
 scalar_t__ USE ;

__attribute__((used)) static rtx
get_next_active_insn (rtx insn, rtx tail)
{
  if (insn == NULL_RTX || insn == tail)
    return NULL_RTX;

  while (1)
    {
      insn = NEXT_INSN (insn);
      if (insn == NULL_RTX || insn == tail)
 return NULL_RTX;

      if (CALL_P (insn)
   || JUMP_P (insn)
   || (NONJUMP_INSN_P (insn)
       && GET_CODE (PATTERN (insn)) != USE
       && GET_CODE (PATTERN (insn)) != CLOBBER
       && INSN_CODE (insn) != CODE_FOR_stack_tie))
 break;
    }
  return insn;
}
