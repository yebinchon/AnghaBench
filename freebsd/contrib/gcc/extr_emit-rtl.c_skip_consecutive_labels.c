
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 int INSN_P (scalar_t__) ;
 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;

rtx
skip_consecutive_labels (rtx label)
{
  rtx insn;

  for (insn = label; insn != 0 && !INSN_P (insn); insn = NEXT_INSN (insn))
    if (LABEL_P (insn))
      label = insn;

  return label;
}
