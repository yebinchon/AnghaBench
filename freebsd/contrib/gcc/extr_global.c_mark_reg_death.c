
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CLEAR_ALLOCNO_LIVE (scalar_t__) ;
 int CLEAR_HARD_REG_BIT (int ,int) ;
 int FIRST_PSEUDO_REGISTER ;
 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 int * fixed_regs ;
 int** hard_regno_nregs ;
 int hard_regs_live ;
 scalar_t__* reg_allocno ;
 int* reg_renumber ;

__attribute__((used)) static void
mark_reg_death (rtx reg)
{
  int regno = REGNO (reg);



  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      if (reg_allocno[regno] >= 0)
 CLEAR_ALLOCNO_LIVE (reg_allocno[regno]);
    }


  if (reg_renumber[regno] >= 0)
    regno = reg_renumber[regno];


  if (regno < FIRST_PSEUDO_REGISTER && ! fixed_regs[regno])
    {


      int last = regno + hard_regno_nregs[regno][GET_MODE (reg)];
      while (regno < last)
 {
   CLEAR_HARD_REG_BIT (hard_regs_live, regno);
   regno++;
 }
    }
}
