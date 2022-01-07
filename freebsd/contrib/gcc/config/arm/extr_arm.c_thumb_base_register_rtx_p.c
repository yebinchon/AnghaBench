
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int FIRST_PSEUDO_REGISTER ;
 int FRAME_POINTER_REGNUM ;
 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE_SIZE (int) ;
 int LAST_LO_REGNUM ;
 int LAST_VIRTUAL_REGISTER ;
 scalar_t__ REG ;
 int REGNO (scalar_t__) ;
 int STACK_POINTER_REGNUM ;
 int THUMB_REGNO_MODE_OK_FOR_BASE_P (int,int) ;
 scalar_t__ arg_pointer_rtx ;
 scalar_t__ hard_frame_pointer_rtx ;

__attribute__((used)) static int
thumb_base_register_rtx_p (rtx x, enum machine_mode mode, int strict_p)
{
  int regno;

  if (GET_CODE (x) != REG)
    return 0;

  regno = REGNO (x);

  if (strict_p)
    return THUMB_REGNO_MODE_OK_FOR_BASE_P (regno, mode);

  return (regno <= LAST_LO_REGNUM
   || regno > LAST_VIRTUAL_REGISTER
   || regno == FRAME_POINTER_REGNUM
   || (GET_MODE_SIZE (mode) >= 4
       && (regno == STACK_POINTER_REGNUM
    || regno >= FIRST_PSEUDO_REGISTER
    || x == hard_frame_pointer_rtx
    || x == arg_pointer_rtx)));
}
