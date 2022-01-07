
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ FP_REG_RTX_P (int ) ;
 scalar_t__ REG_P (int ) ;
 int copy_rtx (int ) ;
 int emit_insn (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_load_df_high (int ,int ,int ) ;
 int gen_load_df_low (int ,int ) ;
 int gen_store_df_high (int ,int ) ;
 int mips_subword (int ,int) ;
 scalar_t__ reg_overlap_mentioned_p (int ,int ) ;

void
mips_split_64bit_move (rtx dest, rtx src)
{
  if (FP_REG_RTX_P (dest))
    {

      emit_insn (gen_load_df_low (copy_rtx (dest), mips_subword (src, 0)));
      emit_insn (gen_load_df_high (dest, mips_subword (src, 1),
       copy_rtx (dest)));
    }
  else if (FP_REG_RTX_P (src))
    {

      emit_move_insn (mips_subword (dest, 0), mips_subword (src, 0));
      emit_insn (gen_store_df_high (mips_subword (dest, 1), src));
    }
  else
    {


      rtx low_dest;

      low_dest = mips_subword (dest, 0);
      if (REG_P (low_dest)
   && reg_overlap_mentioned_p (low_dest, src))
 {
   emit_move_insn (mips_subword (dest, 1), mips_subword (src, 1));
   emit_move_insn (low_dest, mips_subword (src, 0));
 }
      else
 {
   emit_move_insn (low_dest, mips_subword (src, 0));
   emit_move_insn (mips_subword (dest, 1), mips_subword (src, 1));
 }
    }
}
