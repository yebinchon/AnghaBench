
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ARG_POINTER_REGNUM ;
 int FIRST_PSEUDO_REGISTER ;
 int FRAME_POINTER_REGNUM ;
 int GET_MODE_SIZE (int) ;
 int GP_REG_P (int) ;
 int M16_REG_P (int) ;
 int STACK_POINTER_REGNUM ;
 scalar_t__ TARGET_MIPS16 ;
 int* reg_renumber ;

int
mips_regno_mode_ok_for_base_p (int regno, enum machine_mode mode, int strict)
{
  if (regno >= FIRST_PSEUDO_REGISTER)
    {
      if (!strict)
 return 1;
      regno = reg_renumber[regno];
    }




  if (regno == ARG_POINTER_REGNUM || regno == FRAME_POINTER_REGNUM)
    return 1;
  if (TARGET_MIPS16 && regno == STACK_POINTER_REGNUM)
    return !strict || GET_MODE_SIZE (mode) == 4 || GET_MODE_SIZE (mode) == 8;

  return TARGET_MIPS16 ? M16_REG_P (regno) : GP_REG_P (regno);
}
