
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int EQ ;
 int GEN_INT (int) ;
 int GET_MODE_SIZE (int ) ;
 int NULL_RTX ;
 int Pmode ;
 int SImode ;
 scalar_t__ TARGET_32BIT ;
 int do_compare_rtx_and_jump (int ,int ,int ,int,int ,int ,int ,int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_frame_mem (int ,int ) ;
 int gen_int_mode (int,int ) ;
 int gen_label_rtx () ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_MEM (int ,int ) ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int hard_frame_pointer_rtx ;

void
rs6000_aix_emit_builtin_unwind_init (void)
{
  rtx mem;
  rtx stack_top = gen_reg_rtx (Pmode);
  rtx opcode_addr = gen_reg_rtx (Pmode);
  rtx opcode = gen_reg_rtx (SImode);
  rtx tocompare = gen_reg_rtx (SImode);
  rtx no_toc_save_needed = gen_label_rtx ();

  mem = gen_frame_mem (Pmode, hard_frame_pointer_rtx);
  emit_move_insn (stack_top, mem);

  mem = gen_frame_mem (Pmode,
         gen_rtx_PLUS (Pmode, stack_top,
         GEN_INT (2 * GET_MODE_SIZE (Pmode))));
  emit_move_insn (opcode_addr, mem);
  emit_move_insn (opcode, gen_rtx_MEM (SImode, opcode_addr));
  emit_move_insn (tocompare, gen_int_mode (TARGET_32BIT ? 0x80410014
        : 0xE8410028, SImode));

  do_compare_rtx_and_jump (opcode, tocompare, EQ, 1,
      SImode, NULL_RTX, NULL_RTX,
      no_toc_save_needed);

  mem = gen_frame_mem (Pmode,
         gen_rtx_PLUS (Pmode, stack_top,
         GEN_INT (5 * GET_MODE_SIZE (Pmode))));
  emit_move_insn (mem, gen_rtx_REG (Pmode, 2));
  emit_label (no_toc_save_needed);
}
