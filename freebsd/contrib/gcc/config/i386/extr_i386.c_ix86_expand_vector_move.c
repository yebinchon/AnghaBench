
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 int GET_MODE (int ) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int force_const_mem (int,int ) ;
 int force_reg (int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int no_new_pseudos ;
 scalar_t__ register_operand (int ,int) ;
 int reload_completed ;
 int reload_in_progress ;
 scalar_t__ standard_sse_constant_p (int ) ;
 int validize_mem (int ) ;

void
ix86_expand_vector_move (enum machine_mode mode, rtx operands[])
{
  rtx op0 = operands[0], op1 = operands[1];





  if ((reload_in_progress | reload_completed) == 0
      && register_operand (op0, mode)
      && CONSTANT_P (op1)
      && standard_sse_constant_p (op1) <= 0)
    op1 = validize_mem (force_const_mem (mode, op1));


  if (!no_new_pseudos
      && !register_operand (op0, mode)
      && !register_operand (op1, mode))
    {
      emit_move_insn (op0, force_reg (GET_MODE (op0), op1));
      return;
    }

  emit_insn (gen_rtx_SET (VOIDmode, op0, op1));
}
