
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST_DOUBLE ;
 scalar_t__ CONST_INT ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ GET_MODE_CLASS (int) ;
 scalar_t__ MODE_INT ;
 scalar_t__ MODE_PARTIAL_INT ;
 scalar_t__ VOIDmode ;

int
const_double_operand (rtx op, enum machine_mode mode)
{


  if (GET_MODE (op) == VOIDmode && mode != VOIDmode
      && GET_MODE_CLASS (mode) != MODE_INT
      && GET_MODE_CLASS (mode) != MODE_PARTIAL_INT)
    return 0;

  return ((GET_CODE (op) == CONST_DOUBLE || GET_CODE (op) == CONST_INT)
   && (mode == VOIDmode || GET_MODE (op) == mode
       || GET_MODE (op) == VOIDmode));
}
