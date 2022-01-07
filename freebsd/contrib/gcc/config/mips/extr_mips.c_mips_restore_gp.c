
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int Pmode ;
 scalar_t__ TARGET_ABICALLS ;
 int TARGET_EXPLICIT_RELOCS ;
 scalar_t__ TARGET_OLDABI ;
 int current_function_outgoing_args_size ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 scalar_t__ frame_pointer_needed ;
 int gcc_assert (int) ;
 int gen_blockage () ;
 int gen_rtx_MEM (int ,int ) ;
 int hard_frame_pointer_rtx ;
 int mips_add_offset (int ,int ,int ) ;
 int pic_offset_table_rtx ;
 int stack_pointer_rtx ;

void
mips_restore_gp (void)
{
  rtx address, slot;

  gcc_assert (TARGET_ABICALLS && TARGET_OLDABI);

  address = mips_add_offset (pic_offset_table_rtx,
        frame_pointer_needed
        ? hard_frame_pointer_rtx
        : stack_pointer_rtx,
        current_function_outgoing_args_size);
  slot = gen_rtx_MEM (Pmode, address);

  emit_move_insn (pic_offset_table_rtx, slot);
  if (!TARGET_EXPLICIT_RELOCS)
    emit_insn (gen_blockage ());
}
