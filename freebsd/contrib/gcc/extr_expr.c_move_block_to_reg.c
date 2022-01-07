
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (scalar_t__) ;
 int GEN_INT (int) ;
 scalar_t__ HAVE_load_multiple ;
 int LEGITIMATE_CONSTANT_P (scalar_t__) ;
 int delete_insns_since (scalar_t__) ;
 int emit_insn (scalar_t__) ;
 int emit_move_insn (int ,int ) ;
 int force_const_mem (int,scalar_t__) ;
 scalar_t__ gen_load_multiple (int ,scalar_t__,int ) ;
 int gen_rtx_REG (int ,int) ;
 scalar_t__ get_last_insn () ;
 int operand_subword_force (scalar_t__,int,int) ;
 scalar_t__ validize_mem (int ) ;
 int word_mode ;

void
move_block_to_reg (int regno, rtx x, int nregs, enum machine_mode mode)
{
  int i;





  if (nregs == 0)
    return;

  if (CONSTANT_P (x) && ! LEGITIMATE_CONSTANT_P (x))
    x = validize_mem (force_const_mem (mode, x));
  for (i = 0; i < nregs; i++)
    emit_move_insn (gen_rtx_REG (word_mode, regno + i),
      operand_subword_force (x, i, mode));
}
