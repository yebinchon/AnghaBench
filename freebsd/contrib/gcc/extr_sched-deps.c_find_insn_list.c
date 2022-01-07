
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ XEXP (scalar_t__,int) ;

rtx
find_insn_list (rtx insn, rtx list)
{
  while (list)
    {
      if (XEXP (list, 0) == insn)
 return list;
      list = XEXP (list, 1);
    }
  return 0;
}
