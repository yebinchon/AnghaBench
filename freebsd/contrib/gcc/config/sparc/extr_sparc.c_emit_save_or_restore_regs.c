
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int HOST_WIDE_INT ;


 int GEN_INT (int) ;
 int Pmode ;
 scalar_t__ TARGET_V9 ;
 int VOIDmode ;
 int apparent_fsize ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int frame_base_offset ;
 int frame_base_reg ;
 int gen_rtx_PLUS (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int num_gfregs ;
 int save_or_restore_regs (int,int,int ,int,int) ;

__attribute__((used)) static void
emit_save_or_restore_regs (int action)
{
  HOST_WIDE_INT offset;
  rtx base;

  offset = frame_base_offset - apparent_fsize;

  if (offset < -4096 || offset + num_gfregs * 4 > 4095)
    {






      base = gen_rtx_REG (Pmode, 1);
      emit_move_insn (base, GEN_INT (offset));
      emit_insn (gen_rtx_SET (VOIDmode,
         base,
         gen_rtx_PLUS (Pmode, frame_base_reg, base)));
      offset = 0;
    }
  else
    base = frame_base_reg;

  offset = save_or_restore_regs (0, 8, base, offset, action);
  save_or_restore_regs (32, TARGET_V9 ? 96 : 64, base, offset, action);
}
