
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ copy_asm_constraints_vector ;
 scalar_t__ copy_asm_operands_vector ;
 int copy_insn_1 (int ) ;
 scalar_t__ copy_insn_n_scratches ;
 scalar_t__ orig_asm_constraints_vector ;
 scalar_t__ orig_asm_operands_vector ;

rtx
copy_insn (rtx insn)
{
  copy_insn_n_scratches = 0;
  orig_asm_operands_vector = 0;
  orig_asm_constraints_vector = 0;
  copy_asm_operands_vector = 0;
  copy_asm_constraints_vector = 0;
  return copy_insn_1 (insn);
}
