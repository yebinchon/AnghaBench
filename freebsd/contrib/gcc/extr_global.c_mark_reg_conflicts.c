
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int FIRST_PSEUDO_REGISTER ;
 scalar_t__ GET_CODE (int ) ;
 size_t GET_MODE (int ) ;
 int REGNO (int ) ;
 int REG_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int * fixed_regs ;
 int** hard_regno_nregs ;
 int record_one_conflict (int) ;
 scalar_t__* reg_allocno ;
 int* reg_renumber ;

__attribute__((used)) static void
mark_reg_conflicts (rtx reg)
{
  int regno;

  if (GET_CODE (reg) == SUBREG)
    reg = SUBREG_REG (reg);

  if (!REG_P (reg))
    return;

  regno = REGNO (reg);



  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      if (reg_allocno[regno] >= 0)
 record_one_conflict (regno);
    }

  if (reg_renumber[regno] >= 0)
    regno = reg_renumber[regno];


  if (regno < FIRST_PSEUDO_REGISTER && ! fixed_regs[regno])
    {
      int last = regno + hard_regno_nregs[regno][GET_MODE (reg)];
      while (regno < last)
 {
   record_one_conflict (regno);
   regno++;
 }
    }
}
