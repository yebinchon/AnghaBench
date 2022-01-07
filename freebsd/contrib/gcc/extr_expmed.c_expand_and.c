
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int AND ;
 scalar_t__ GET_MODE (scalar_t__) ;
 int OPTAB_LIB_WIDEN ;
 scalar_t__ VOIDmode ;
 int and_optab ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 scalar_t__ expand_binop (int,int ,scalar_t__,scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ simplify_binary_operation (int ,int,scalar_t__,scalar_t__) ;

rtx
expand_and (enum machine_mode mode, rtx op0, rtx op1, rtx target)
{
  rtx tem = 0;

  if (GET_MODE (op0) == VOIDmode && GET_MODE (op1) == VOIDmode)
    tem = simplify_binary_operation (AND, mode, op0, op1);
  if (tem == 0)
    tem = expand_binop (mode, and_optab, op0, op1, target, 0, OPTAB_LIB_WIDEN);

  if (target == 0)
    target = tem;
  else if (tem != target)
    emit_move_insn (target, tem);
  return target;
}
