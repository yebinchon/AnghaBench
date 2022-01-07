
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int GEN_INT (int) ;
 int V4SFmode ;
 int emit_insn (int ) ;
 int gen_reg_rtx (int ) ;
 int gen_sse_movhlps (int ,int ,int ) ;
 int gen_sse_shufps_1 (int ,int ,int ,int ,int ,int ,int ) ;

void
ix86_expand_reduc_v4sf (rtx (*fn) (rtx, rtx, rtx), rtx dest, rtx in)
{
  rtx tmp1, tmp2, tmp3;

  tmp1 = gen_reg_rtx (V4SFmode);
  tmp2 = gen_reg_rtx (V4SFmode);
  tmp3 = gen_reg_rtx (V4SFmode);

  emit_insn (gen_sse_movhlps (tmp1, in, in));
  emit_insn (fn (tmp2, tmp1, in));

  emit_insn (gen_sse_shufps_1 (tmp3, tmp2, tmp2,
          GEN_INT (1), GEN_INT (1),
          GEN_INT (1+4), GEN_INT (1+4)));
  emit_insn (fn (dest, tmp2, tmp3));
}
