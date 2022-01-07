
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ CC0 ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 unsigned int REGNO (int ) ;
 int REG_P (int ) ;
 int dead_or_set_regno_p (int ,unsigned int) ;
 int gcc_assert (int ) ;
 unsigned int** hard_regno_nregs ;

int
dead_or_set_p (rtx insn, rtx x)
{
  unsigned int regno, last_regno;
  unsigned int i;


  if (GET_CODE (x) == CC0)
    return 1;

  gcc_assert (REG_P (x));

  regno = REGNO (x);
  last_regno = (regno >= FIRST_PSEUDO_REGISTER ? regno
  : regno + hard_regno_nregs[regno][GET_MODE (x)] - 1);

  for (i = regno; i <= last_regno; i++)
    if (! dead_or_set_regno_p (insn, i))
      return 0;

  return 1;
}
