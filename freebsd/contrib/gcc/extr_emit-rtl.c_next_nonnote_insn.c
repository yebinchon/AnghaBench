
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 int NOTE_P (scalar_t__) ;

rtx
next_nonnote_insn (rtx insn)
{
  while (insn)
    {
      insn = NEXT_INSN (insn);
      if (insn == 0 || !NOTE_P (insn))
 break;
    }

  return insn;
}
