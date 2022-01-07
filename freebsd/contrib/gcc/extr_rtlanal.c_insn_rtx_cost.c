
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int COSTS_N_INSNS (int) ;
 scalar_t__ GET_CODE (int ) ;
 int NULL_RTX ;
 scalar_t__ PARALLEL ;
 scalar_t__ SET ;
 int SET_SRC (int ) ;
 int XVECEXP (int ,int ,int) ;
 int XVECLEN (int ,int ) ;
 int rtx_cost (int ,scalar_t__) ;

int
insn_rtx_cost (rtx pat)
{
  int i, cost;
  rtx set;



  if (GET_CODE (pat) == SET)
    set = pat;
  else if (GET_CODE (pat) == PARALLEL)
    {
      set = NULL_RTX;
      for (i = 0; i < XVECLEN (pat, 0); i++)
 {
   rtx x = XVECEXP (pat, 0, i);
   if (GET_CODE (x) == SET)
     {
       if (set)
  return 0;
       set = x;
     }
 }
      if (!set)
 return 0;
    }
  else
    return 0;

  cost = rtx_cost (SET_SRC (set), SET);
  return cost > 0 ? cost : COSTS_N_INSNS (1);
}
