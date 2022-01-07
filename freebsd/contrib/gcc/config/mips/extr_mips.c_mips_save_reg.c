
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ DFmode ;
 scalar_t__ GET_MODE (int ) ;
 scalar_t__ GP_REG_FIRST ;
 int M16_REG_P (scalar_t__) ;
 int MIPS_PROLOGUE_TEMP (scalar_t__) ;
 scalar_t__ REGNO (int ) ;
 int TARGET_FLOAT64 ;
 scalar_t__ TARGET_MIPS16 ;
 int VOIDmode ;
 int emit_move_insn (int ,int ) ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_PARALLEL (int ,int ) ;
 int mips_frame_set (int ,int ) ;
 int mips_set_frame_expr (int ) ;
 int mips_split_64bit_move (int ,int ) ;
 scalar_t__ mips_split_64bit_move_p (int ,int ) ;
 int mips_subword (int ,int) ;

__attribute__((used)) static void
mips_save_reg (rtx reg, rtx mem)
{
  if (GET_MODE (reg) == DFmode && !TARGET_FLOAT64)
    {
      rtx x1, x2;

      if (mips_split_64bit_move_p (mem, reg))
 mips_split_64bit_move (mem, reg);
      else
 emit_move_insn (mem, reg);

      x1 = mips_frame_set (mips_subword (mem, 0), mips_subword (reg, 0));
      x2 = mips_frame_set (mips_subword (mem, 1), mips_subword (reg, 1));
      mips_set_frame_expr (gen_rtx_PARALLEL (VOIDmode, gen_rtvec (2, x1, x2)));
    }
  else
    {
      if (TARGET_MIPS16
   && REGNO (reg) != GP_REG_FIRST + 31
   && !M16_REG_P (REGNO (reg)))
 {



   emit_move_insn (MIPS_PROLOGUE_TEMP (GET_MODE (reg)), reg);
   emit_move_insn (mem, MIPS_PROLOGUE_TEMP (GET_MODE (reg)));
 }
      else
 emit_move_insn (mem, reg);

      mips_set_frame_expr (mips_frame_set (mem, reg));
    }
}
