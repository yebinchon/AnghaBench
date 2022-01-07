
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ NEXT_INSN (scalar_t__) ;
 scalar_t__ active_insn_p (scalar_t__) ;

rtx
next_active_insn (rtx insn)
{
  while (insn)
    {
      insn = NEXT_INSN (insn);
      if (insn == 0 || active_insn_p (insn))
 break;
    }

  return insn;
}
