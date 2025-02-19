
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ CALL_P (scalar_t__) ;
 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 int USE ;
 scalar_t__ find_reg_fusage (scalar_t__,int ,scalar_t__) ;
 scalar_t__ reg_overlap_mentioned_p (scalar_t__,int ) ;

int
reg_used_between_p (rtx reg, rtx from_insn, rtx to_insn)
{
  rtx insn;

  if (from_insn == to_insn)
    return 0;

  for (insn = NEXT_INSN (from_insn); insn != to_insn; insn = NEXT_INSN (insn))
    if (INSN_P (insn)
 && (reg_overlap_mentioned_p (reg, PATTERN (insn))
    || (CALL_P (insn) && find_reg_fusage (insn, USE, reg))))
      return 1;
  return 0;
}
