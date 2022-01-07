
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ INTVAL (int ) ;
 int VOIDmode ;
 scalar_t__ trunc_int_for_mode (scalar_t__,int) ;

int
const_int_operand (rtx op, enum machine_mode mode)
{
  if (GET_CODE (op) != CONST_INT)
    return 0;

  if (mode != VOIDmode
      && trunc_int_for_mode (INTVAL (op), mode) != INTVAL (op))
    return 0;

  return 1;
}
