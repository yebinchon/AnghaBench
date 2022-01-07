
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int CALL_INSN ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int INSN ;
 scalar_t__ INSN_ANNULLED_BRANCH_P (scalar_t__) ;
 scalar_t__ INSN_FROM_TARGET_P (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 int JUMP_INSN ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 scalar_t__ PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ SEQUENCE ;
 scalar_t__ XVECEXP (scalar_t__,int ,int ) ;

__attribute__((used)) static rtx
next_insn_no_annul (rtx insn)
{
  if (insn)
    {


      if (INSN_P (insn)
   && INSN_ANNULLED_BRANCH_P (insn)
   && NEXT_INSN (PREV_INSN (insn)) != insn)
 {
   rtx next = NEXT_INSN (insn);
   enum rtx_code code = GET_CODE (next);

   while ((code == INSN || code == JUMP_INSN || code == CALL_INSN)
   && INSN_FROM_TARGET_P (next))
     {
       insn = next;
       next = NEXT_INSN (insn);
       code = GET_CODE (next);
     }
 }

      insn = NEXT_INSN (insn);
      if (insn && NONJUMP_INSN_P (insn)
   && GET_CODE (PATTERN (insn)) == SEQUENCE)
 insn = XVECEXP (PATTERN (insn), 0, 0);
    }

  return insn;
}
