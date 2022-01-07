
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 size_t REGNO (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;

__attribute__((used)) static bool
store_ops_ok (rtx x, int *regs_set)
{
  rtx reg;

  for (; x; x = XEXP (x, 1))
    {
      reg = XEXP (x, 0);
      if (regs_set[REGNO(reg)])
 return 0;
    }

  return 1;
}
