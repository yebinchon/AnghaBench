
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 int Pmode ;
 int SORR_RESTORE ;
 int actual_fsize ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int emit_save_or_restore_regs (int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_stack_pointer_dec (int ) ;
 scalar_t__ num_gfregs ;
 scalar_t__ sparc_leaf_function_p ;

void
sparc_expand_epilogue (void)
{
  if (num_gfregs)
    emit_save_or_restore_regs (SORR_RESTORE);

  if (actual_fsize == 0)
                       ;
  else if (sparc_leaf_function_p)
    {
      if (actual_fsize <= 4096)
 emit_insn (gen_stack_pointer_dec (GEN_INT (- actual_fsize)));
      else if (actual_fsize <= 8192)
 {
   emit_insn (gen_stack_pointer_dec (GEN_INT (-4096)));
   emit_insn (gen_stack_pointer_dec (GEN_INT (4096 - actual_fsize)));
 }
      else
 {
   rtx reg = gen_rtx_REG (Pmode, 1);
   emit_move_insn (reg, GEN_INT (-actual_fsize));
   emit_insn (gen_stack_pointer_dec (reg));
 }
    }
}
