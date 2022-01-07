
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int ARG_POINTER_REGNUM ;
 int ARM_REGNO_OK_FOR_BASE_P (int) ;
 int FIRST_PSEUDO_REGISTER ;
 int FRAME_POINTER_REGNUM ;
 scalar_t__ GET_CODE (int ) ;
 int LAST_ARM_REGNUM ;
 scalar_t__ REG ;
 int REGNO (int ) ;

__attribute__((used)) static int
arm_address_register_rtx_p (rtx x, int strict_p)
{
  int regno;

  if (GET_CODE (x) != REG)
    return 0;

  regno = REGNO (x);

  if (strict_p)
    return ARM_REGNO_OK_FOR_BASE_P (regno);

  return (regno <= LAST_ARM_REGNUM
   || regno >= FIRST_PSEUDO_REGISTER
   || regno == FRAME_POINTER_REGNUM
   || regno == ARG_POINTER_REGNUM);
}
