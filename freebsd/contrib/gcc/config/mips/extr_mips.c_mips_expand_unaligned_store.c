
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;
 int MODE_INT ;
 int copy_rtx (int ) ;
 int emit_insn (int ) ;
 int gen_lowpart (int,int ) ;
 int gen_mov_sdl (int ,int ,int ) ;
 int gen_mov_sdr (int ,int ,int ) ;
 int gen_mov_swl (int ,int ,int ) ;
 int gen_mov_swr (int ,int ,int ) ;
 int mips_get_unaligned_mem (int *,unsigned int,int,int *,int *) ;
 int mode_for_size (unsigned int,int ,int ) ;

bool
mips_expand_unaligned_store (rtx dest, rtx src, unsigned int width, int bitpos)
{
  rtx left, right;
  enum machine_mode mode;

  if (!mips_get_unaligned_mem (&dest, width, bitpos, &left, &right))
    return 0;

  mode = mode_for_size (width, MODE_INT, 0);
  src = gen_lowpart (mode, src);

  if (mode == DImode)
    {
      emit_insn (gen_mov_sdl (dest, src, left));
      emit_insn (gen_mov_sdr (copy_rtx (dest), copy_rtx (src), right));
    }
  else
    {
      emit_insn (gen_mov_swl (dest, src, left));
      emit_insn (gen_mov_swr (copy_rtx (dest), copy_rtx (src), right));
    }
  return 1;
}
