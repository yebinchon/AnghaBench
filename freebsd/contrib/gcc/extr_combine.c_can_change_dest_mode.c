
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 unsigned int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 scalar_t__ HARD_REGNO_MODE_OK (unsigned int,int) ;
 unsigned int REGNO (int ) ;
 int REG_N_SETS (unsigned int) ;
 int REG_P (int ) ;
 int REG_USERVAR_P (int ) ;
 scalar_t__** hard_regno_nregs ;

__attribute__((used)) static bool
can_change_dest_mode (rtx x, int added_sets, enum machine_mode mode)
{
  unsigned int regno;

  if (!REG_P(x))
    return 0;

  regno = REGNO (x);


  if (regno < FIRST_PSEUDO_REGISTER)
    return (HARD_REGNO_MODE_OK (regno, mode)
     && (hard_regno_nregs[regno][GET_MODE (x)]
  >= hard_regno_nregs[regno][mode]));


  return (REG_N_SETS (regno) == 1 && !added_sets
   && !REG_USERVAR_P (x));
}
