
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ DImode ;
 int EQ ;
 int GEN_INT (int) ;
 scalar_t__ GET_MODE (int ) ;
 int const0_rtx ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,scalar_t__,int,int ) ;
 int emit_insn (int ) ;
 int gen_anddi3 (int ,int ,int ) ;
 int gen_andsi3 (int ,int ,int ) ;
 int gen_label_rtx () ;
 int gen_reg_rtx (scalar_t__) ;

__attribute__((used)) static rtx
ix86_expand_aligntest (rtx variable, int value)
{
  rtx label = gen_label_rtx ();
  rtx tmpcount = gen_reg_rtx (GET_MODE (variable));
  if (GET_MODE (variable) == DImode)
    emit_insn (gen_anddi3 (tmpcount, variable, GEN_INT (value)));
  else
    emit_insn (gen_andsi3 (tmpcount, variable, GEN_INT (value)));
  emit_cmp_and_jump_insns (tmpcount, const0_rtx, EQ, 0, GET_MODE (variable),
      1, label);
  return label;
}
