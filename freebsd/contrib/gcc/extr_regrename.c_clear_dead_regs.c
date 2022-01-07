
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HARD_REG_SET ;


 int CLEAR_HARD_REG_BIT (int ,unsigned int) ;
 unsigned int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (scalar_t__) ;
 unsigned int REGNO (scalar_t__) ;
 int REG_NOTE_KIND (scalar_t__) ;
 scalar_t__ REG_P (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 int gcc_assert (int) ;
 int** hard_regno_nregs ;

__attribute__((used)) static void
clear_dead_regs (HARD_REG_SET *pset, enum machine_mode kind, rtx notes)
{
  rtx note;
  for (note = notes; note; note = XEXP (note, 1))
    if (REG_NOTE_KIND (note) == kind && REG_P (XEXP (note, 0)))
      {
 rtx reg = XEXP (note, 0);
 unsigned int regno = REGNO (reg);
 int nregs = hard_regno_nregs[regno][GET_MODE (reg)];


 gcc_assert (regno + nregs <= FIRST_PSEUDO_REGISTER);

 while (nregs-- > 0)
   CLEAR_HARD_REG_BIT (*pset, regno + nregs);
      }
}
