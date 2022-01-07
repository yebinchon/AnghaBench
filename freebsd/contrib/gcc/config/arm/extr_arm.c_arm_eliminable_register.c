
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ARG_POINTER_REGNUM ;
 scalar_t__ FIRST_VIRTUAL_REGISTER ;
 scalar_t__ FRAME_POINTER_REGNUM ;
 scalar_t__ LAST_VIRTUAL_REGISTER ;
 scalar_t__ REGNO (int ) ;
 scalar_t__ REG_P (int ) ;

int
arm_eliminable_register (rtx x)
{
  return REG_P (x) && (REGNO (x) == FRAME_POINTER_REGNUM
         || REGNO (x) == ARG_POINTER_REGNUM
         || (REGNO (x) >= FIRST_VIRTUAL_REGISTER
      && REGNO (x) <= LAST_VIRTUAL_REGISTER));
}
