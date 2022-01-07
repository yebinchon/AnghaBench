
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ NONJUMP_INSN_P (scalar_t__) ;
 int PATTERN (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;
 scalar_t__ SEQUENCE ;
 scalar_t__ XVECEXP (int ,int ,scalar_t__) ;
 scalar_t__ XVECLEN (int ,int ) ;

rtx
previous_insn (rtx insn)
{
  if (insn)
    {
      insn = PREV_INSN (insn);
      if (insn && NONJUMP_INSN_P (insn)
   && GET_CODE (PATTERN (insn)) == SEQUENCE)
 insn = XVECEXP (PATTERN (insn), 0, XVECLEN (PATTERN (insn), 0) - 1);
    }

  return insn;
}
