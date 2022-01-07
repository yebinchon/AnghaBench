
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum reg_class { ____Placeholder_reg_class } reg_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 size_t GET_MODE (scalar_t__) ;
 int HARD_REGNO_MODE_OK (unsigned int,int) ;
 unsigned int REGNO (scalar_t__) ;
 int TEST_HARD_REG_BIT (int ,unsigned int) ;
 scalar_t__** hard_regno_nregs ;
 int * reg_class_contents ;
 scalar_t__ reload_adjust_reg_for_mode (scalar_t__,int) ;

__attribute__((used)) static bool
reload_adjust_reg_for_temp (rtx *reload_reg, rtx alt_reload_reg,
       enum reg_class new_class,
       enum machine_mode new_mode)

{
  rtx reg;

  for (reg = *reload_reg; reg; reg = alt_reload_reg, alt_reload_reg = 0)
    {
      unsigned regno = REGNO (reg);

      if (!TEST_HARD_REG_BIT (reg_class_contents[(int) new_class], regno))
 continue;
      if (GET_MODE (reg) != new_mode)
 {
   if (!HARD_REGNO_MODE_OK (regno, new_mode))
     continue;
   if (hard_regno_nregs[regno][new_mode]
       > hard_regno_nregs[regno][GET_MODE (reg)])
     continue;
   reg = reload_adjust_reg_for_mode (reg, new_mode);
 }
      *reload_reg = reg;
      return 1;
    }
  return 0;
}
