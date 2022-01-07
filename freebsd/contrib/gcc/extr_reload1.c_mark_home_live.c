
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t PSEUDO_REGNO_MODE (int) ;
 int** hard_regno_nregs ;
 int* reg_renumber ;
 int* regs_ever_live ;

void
mark_home_live (int regno)
{
  int i, lim;

  i = reg_renumber[regno];
  if (i < 0)
    return;
  lim = i + hard_regno_nregs[i][PSEUDO_REGNO_MODE (regno)];
  while (i < lim)
    regs_ever_live[i++] = 1;
}
