
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int CCV2mode ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int gen_mips_cond_move_tf_ps (int ,int ,int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_rtx_fmt_ee (int,int ,int ,int ) ;
 int gen_scc_ps (int ,int ) ;
 int mips_reverse_fp_cond_p (int*) ;

void
mips_expand_vcondv2sf (rtx dest, rtx true_src, rtx false_src,
         enum rtx_code cond, rtx cmp_op0, rtx cmp_op1)
{
  rtx cmp_result;
  bool reversed_p;

  reversed_p = mips_reverse_fp_cond_p (&cond);
  cmp_result = gen_reg_rtx (CCV2mode);
  emit_insn (gen_scc_ps (cmp_result,
    gen_rtx_fmt_ee (cond, VOIDmode, cmp_op0, cmp_op1)));
  if (reversed_p)
    emit_insn (gen_mips_cond_move_tf_ps (dest, false_src, true_src,
      cmp_result));
  else
    emit_insn (gen_mips_cond_move_tf_ps (dest, true_src, false_src,
      cmp_result));
}
