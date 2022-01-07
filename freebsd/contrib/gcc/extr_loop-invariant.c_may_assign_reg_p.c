
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ BLKmode ;
 scalar_t__ GET_MODE (int ) ;
 int HARD_REGISTER_P (int ) ;
 scalar_t__ NO_REGS ;
 int REGNO (int ) ;
 scalar_t__ REGNO_REG_CLASS (int ) ;
 int REG_P (int ) ;
 scalar_t__ VOIDmode ;
 scalar_t__ can_copy_p (scalar_t__) ;

__attribute__((used)) static bool
may_assign_reg_p (rtx x)
{
  return (GET_MODE (x) != VOIDmode
   && GET_MODE (x) != BLKmode
   && can_copy_p (GET_MODE (x))
   && (!REG_P (x)
       || !HARD_REGISTER_P (x)
       || REGNO_REG_CLASS (REGNO (x)) != NO_REGS));
}
