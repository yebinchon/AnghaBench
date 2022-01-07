
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int FIRST_PSEUDO_REGISTER ;
 int HARD_REGNO_NREGS (int,int) ;
 int MAX_MACHINE_MODE ;
 scalar_t__ VOIDmode ;
 scalar_t__ choose_hard_reg_mode (int,int,int) ;
 int ** hard_regno_nregs ;
 scalar_t__* reg_raw_mode ;
 scalar_t__ word_mode ;

void
init_reg_modes_once (void)
{
  int i, j;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    for (j = 0; j < MAX_MACHINE_MODE; j++)
      hard_regno_nregs[i][j] = HARD_REGNO_NREGS(i, (enum machine_mode)j);

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    {
      reg_raw_mode[i] = choose_hard_reg_mode (i, 1, 0);






      if (reg_raw_mode[i] == VOIDmode)
 reg_raw_mode[i] = i == 0 ? word_mode : reg_raw_mode[i-1];
    }
}
