
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCEQmode ;
 int DImode ;
 int EQ ;
 int GE ;
 int GET_CODE (int ) ;
 int GET_MODE (int ) ;
 int GEU ;
 int LE ;
 int LEU ;
 int NE ;
 int ORDERED ;
 int PUT_MODE (int ,int) ;
 int SImode ;
 scalar_t__ TARGET_E500 ;
 int TARGET_FPRS ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_POWERPC64 ;
 int UNGE ;
 int UNLE ;
 int VOIDmode ;
 int XEXP (int ,int ) ;
 int const0_rtx ;
 int convert_move (int ,int ,int ) ;
 int emit_insn (int ) ;
 int gcc_assert (int) ;
 int gen_e500_flip_gt_bit (int ,int ) ;
 int gen_move_from_CR_gt_bit (int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_COMPARE (int ,int ,int ) ;
 int gen_rtx_EQ (int,int ,int ) ;
 int gen_rtx_SET (int,int ,int ) ;
 int gen_rtx_fmt_ee (int ,int,int ,int ) ;
 scalar_t__ rs6000_compare_fp_p ;
 int rs6000_compare_op0 ;
 int rs6000_compare_op1 ;
 int rs6000_generate_compare (int) ;
 int rs6000_reverse_condition (int,int) ;

void
rs6000_emit_sCOND (enum rtx_code code, rtx result)
{
  rtx condition_rtx;
  enum machine_mode op_mode;
  enum rtx_code cond_code;

  condition_rtx = rs6000_generate_compare (code);
  cond_code = GET_CODE (condition_rtx);

  if (TARGET_E500 && rs6000_compare_fp_p
      && !TARGET_FPRS && TARGET_HARD_FLOAT)
    {
      rtx t;

      PUT_MODE (condition_rtx, SImode);
      t = XEXP (condition_rtx, 0);

      gcc_assert (cond_code == NE || cond_code == EQ);

      if (cond_code == NE)
 emit_insn (gen_e500_flip_gt_bit (t, t));

      emit_insn (gen_move_from_CR_gt_bit (result, t));
      return;
    }

  if (cond_code == NE
      || cond_code == GE || cond_code == LE
      || cond_code == GEU || cond_code == LEU
      || cond_code == ORDERED || cond_code == UNGE || cond_code == UNLE)
    {
      rtx not_result = gen_reg_rtx (CCEQmode);
      rtx not_op, rev_cond_rtx;
      enum machine_mode cc_mode;

      cc_mode = GET_MODE (XEXP (condition_rtx, 0));

      rev_cond_rtx = gen_rtx_fmt_ee (rs6000_reverse_condition (cc_mode, cond_code),
         SImode, XEXP (condition_rtx, 0), const0_rtx);
      not_op = gen_rtx_COMPARE (CCEQmode, rev_cond_rtx, const0_rtx);
      emit_insn (gen_rtx_SET (VOIDmode, not_result, not_op));
      condition_rtx = gen_rtx_EQ (VOIDmode, not_result, const0_rtx);
    }

  op_mode = GET_MODE (rs6000_compare_op0);
  if (op_mode == VOIDmode)
    op_mode = GET_MODE (rs6000_compare_op1);

  if (TARGET_POWERPC64 && (op_mode == DImode || rs6000_compare_fp_p))
    {
      PUT_MODE (condition_rtx, DImode);
      convert_move (result, condition_rtx, 0);
    }
  else
    {
      PUT_MODE (condition_rtx, SImode);
      emit_insn (gen_rtx_SET (VOIDmode, result, condition_rtx));
    }
}
