
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ INSN_P (scalar_t__) ;
 scalar_t__ PREV_INSN (scalar_t__) ;

rtx
prev_real_insn (rtx insn)
{
  while (insn)
    {
      insn = PREV_INSN (insn);
      if (insn == 0 || INSN_P (insn))
 break;
    }

  return insn;
}
