
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST0_RTX (int ) ;
 int LT ;
 int V2SImode ;
 int V4HImode ;
 int V8QImode ;
 int emit_insn (int ) ;
 int gcc_assert (int) ;
 int gen_addv2si3 (int ,int ,int ) ;
 int gen_lowpart (int ,int ) ;
 int gen_pmpy2_l (int ,int ,int ) ;
 int gen_pmpy2_r (int ,int ,int ) ;
 int gen_reg_rtx (int ) ;
 int gen_unpack1_h (int ,int ,int ) ;
 int gen_unpack1_l (int ,int ,int ) ;
 int ia64_expand_vecint_compare (int ,int ,int ,int ,int ) ;

void
ia64_expand_dot_prod_v8qi (rtx operands[4], bool unsignedp)
{
  rtx l1, l2, h1, h2, x1, x2, p1, p2, p3, p4, s1, s2, s3;


  if (unsignedp)
    x1 = x2 = CONST0_RTX (V8QImode);
  else
    {
      bool neg;

      x1 = gen_reg_rtx (V8QImode);
      x2 = gen_reg_rtx (V8QImode);

      neg = ia64_expand_vecint_compare (LT, V8QImode, x1, operands[1],
     CONST0_RTX (V8QImode));
      gcc_assert (!neg);
      neg = ia64_expand_vecint_compare (LT, V8QImode, x2, operands[2],
     CONST0_RTX (V8QImode));
      gcc_assert (!neg);
    }

  l1 = gen_reg_rtx (V4HImode);
  l2 = gen_reg_rtx (V4HImode);
  h1 = gen_reg_rtx (V4HImode);
  h2 = gen_reg_rtx (V4HImode);

  emit_insn (gen_unpack1_l (gen_lowpart (V8QImode, l1), operands[1], x1));
  emit_insn (gen_unpack1_l (gen_lowpart (V8QImode, l2), operands[2], x2));
  emit_insn (gen_unpack1_h (gen_lowpart (V8QImode, h1), operands[1], x1));
  emit_insn (gen_unpack1_h (gen_lowpart (V8QImode, h2), operands[2], x2));

  p1 = gen_reg_rtx (V2SImode);
  p2 = gen_reg_rtx (V2SImode);
  p3 = gen_reg_rtx (V2SImode);
  p4 = gen_reg_rtx (V2SImode);
  emit_insn (gen_pmpy2_r (p1, l1, l2));
  emit_insn (gen_pmpy2_l (p2, l1, l2));
  emit_insn (gen_pmpy2_r (p3, h1, h2));
  emit_insn (gen_pmpy2_l (p4, h1, h2));

  s1 = gen_reg_rtx (V2SImode);
  s2 = gen_reg_rtx (V2SImode);
  s3 = gen_reg_rtx (V2SImode);
  emit_insn (gen_addv2si3 (s1, p1, p2));
  emit_insn (gen_addv2si3 (s2, p3, p4));
  emit_insn (gen_addv2si3 (s3, s1, operands[3]));
  emit_insn (gen_addv2si3 (operands[0], s2, s3));
}
