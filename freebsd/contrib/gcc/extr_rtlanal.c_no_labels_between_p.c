
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ LABEL_P (scalar_t__) ;
 scalar_t__ NEXT_INSN (scalar_t__) ;

int
no_labels_between_p (rtx beg, rtx end)
{
  rtx p;
  if (beg == end)
    return 0;
  for (p = NEXT_INSN (beg); p != end; p = NEXT_INSN (p))
    if (LABEL_P (p))
      return 0;
  return 1;
}
