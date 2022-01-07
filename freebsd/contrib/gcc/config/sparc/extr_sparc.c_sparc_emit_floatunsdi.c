
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int DImode ;
 int LT ;
 int VOIDmode ;
 int const0_rtx ;
 int const1_rtx ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,int,int ,int ) ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (int ) ;
 int force_reg (int,int ) ;
 int gen_anddi3 (int ,int ,int ) ;
 int gen_iordi3 (int ,int ,int ) ;
 int gen_jump (int ) ;
 int gen_label_rtx () ;
 int gen_lshrdi3 (int ,int ,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_FLOAT (int,int ) ;
 int gen_rtx_PLUS (int,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;

void
sparc_emit_floatunsdi (rtx *operands, enum machine_mode mode)
{
  rtx neglab, donelab, i0, i1, f0, in, out;

  out = operands[0];
  in = force_reg (DImode, operands[1]);
  neglab = gen_label_rtx ();
  donelab = gen_label_rtx ();
  i0 = gen_reg_rtx (DImode);
  i1 = gen_reg_rtx (DImode);
  f0 = gen_reg_rtx (mode);

  emit_cmp_and_jump_insns (in, const0_rtx, LT, const0_rtx, DImode, 0, neglab);

  emit_insn (gen_rtx_SET (VOIDmode, out, gen_rtx_FLOAT (mode, in)));
  emit_jump_insn (gen_jump (donelab));
  emit_barrier ();

  emit_label (neglab);

  emit_insn (gen_lshrdi3 (i0, in, const1_rtx));
  emit_insn (gen_anddi3 (i1, in, const1_rtx));
  emit_insn (gen_iordi3 (i0, i0, i1));
  emit_insn (gen_rtx_SET (VOIDmode, f0, gen_rtx_FLOAT (mode, i0)));
  emit_insn (gen_rtx_SET (VOIDmode, out, gen_rtx_PLUS (mode, f0, f0)));

  emit_label (donelab);
}
