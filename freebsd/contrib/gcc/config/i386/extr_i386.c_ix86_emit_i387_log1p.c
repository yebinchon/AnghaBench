
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int CONST1_RTX (int ) ;
 int CONST_DOUBLE_FROM_REAL_VALUE (int ,int ) ;
 int REAL_VALUE_ATOF (char*,int ) ;
 int XFmode ;
 int emit_insn (int ) ;
 int emit_jump (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int gen_absxf2 (int ,int ) ;
 int gen_addxf3 (int ,int ,int ) ;
 int gen_bge (int ) ;
 int gen_cmpxf (int ,int ) ;
 int gen_fyl2x_xf3 (int ,int ,int ) ;
 int gen_fyl2xp1_xf3 (int ,int ,int ) ;
 int gen_label_rtx () ;
 int gen_reg_rtx (int ) ;
 int standard_80387_constant_rtx (int) ;

void ix86_emit_i387_log1p (rtx op0, rtx op1)
{
  rtx label1 = gen_label_rtx ();
  rtx label2 = gen_label_rtx ();

  rtx tmp = gen_reg_rtx (XFmode);
  rtx tmp2 = gen_reg_rtx (XFmode);

  emit_insn (gen_absxf2 (tmp, op1));
  emit_insn (gen_cmpxf (tmp,
    CONST_DOUBLE_FROM_REAL_VALUE (
       REAL_VALUE_ATOF ("0.29289321881345247561810596348408353", XFmode),
       XFmode)));
  emit_jump_insn (gen_bge (label1));

  emit_move_insn (tmp2, standard_80387_constant_rtx (4));
  emit_insn (gen_fyl2xp1_xf3 (op0, tmp2, op1));
  emit_jump (label2);

  emit_label (label1);
  emit_move_insn (tmp, CONST1_RTX (XFmode));
  emit_insn (gen_addxf3 (tmp, op1, tmp));
  emit_move_insn (tmp2, standard_80387_constant_rtx (4));
  emit_insn (gen_fyl2x_xf3 (op0, tmp2, tmp));

  emit_label (label2);
}
