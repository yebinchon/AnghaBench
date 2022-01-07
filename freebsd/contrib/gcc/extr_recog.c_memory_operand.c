
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ MEM_P (int ) ;
 scalar_t__ SUBREG ;
 int SUBREG_REG (int ) ;
 int VOIDmode ;
 scalar_t__ general_operand (int ,int) ;
 int reload_completed ;

int
memory_operand (rtx op, enum machine_mode mode)
{
  rtx inner;

  if (! reload_completed)


    return MEM_P (op) && general_operand (op, mode);

  if (mode != VOIDmode && GET_MODE (op) != mode)
    return 0;

  inner = op;
  if (GET_CODE (inner) == SUBREG)
    inner = SUBREG_REG (inner);

  return (MEM_P (inner) && general_operand (op, mode));
}
