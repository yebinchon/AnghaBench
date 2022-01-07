
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CONST_DOUBLE_FROM_REAL_VALUE (int ,int) ;
 int DImode ;
 int GE ;
 int GEN_INT (int) ;
 int NULL_RTX ;
 int REAL_VALUE_ATOF (char*,int) ;
 int VOIDmode ;
 int const1_rtx ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (int ,int ,int ,int ,int,int ,int ) ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (int ) ;
 int emit_move_insn (int ,int ) ;
 int force_reg (int,int ) ;
 int gen_ashldi3 (int ,int ,int ) ;
 int gen_jump (int ) ;
 int gen_label_rtx () ;
 int gen_movdi (int ,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_FIX (int,int ) ;
 int gen_rtx_MINUS (int,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_xordi3 (int ,int ,int ) ;

void
sparc_emit_fixunsdi (rtx *operands, enum machine_mode mode)
{
  rtx neglab, donelab, i0, i1, f0, in, out, limit;

  out = operands[0];
  in = force_reg (mode, operands[1]);
  neglab = gen_label_rtx ();
  donelab = gen_label_rtx ();
  i0 = gen_reg_rtx (DImode);
  i1 = gen_reg_rtx (DImode);
  limit = gen_reg_rtx (mode);
  f0 = gen_reg_rtx (mode);

  emit_move_insn (limit,
    CONST_DOUBLE_FROM_REAL_VALUE (
      REAL_VALUE_ATOF ("9223372036854775808.0", mode), mode));
  emit_cmp_and_jump_insns (in, limit, GE, NULL_RTX, mode, 0, neglab);

  emit_insn (gen_rtx_SET (VOIDmode,
     out,
     gen_rtx_FIX (DImode, gen_rtx_FIX (mode, in))));
  emit_jump_insn (gen_jump (donelab));
  emit_barrier ();

  emit_label (neglab);

  emit_insn (gen_rtx_SET (VOIDmode, f0, gen_rtx_MINUS (mode, in, limit)));
  emit_insn (gen_rtx_SET (VOIDmode,
     i0,
     gen_rtx_FIX (DImode, gen_rtx_FIX (mode, f0))));
  emit_insn (gen_movdi (i1, const1_rtx));
  emit_insn (gen_ashldi3 (i1, i1, GEN_INT (63)));
  emit_insn (gen_xordi3 (out, i0, i1));

  emit_label (donelab);
}
