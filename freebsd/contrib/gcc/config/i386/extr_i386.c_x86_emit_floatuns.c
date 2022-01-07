
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int AND ;
 int DImode ;
 int GET_MODE (int *) ;
 int IOR ;
 int LSHIFTRT ;
 int LT ;
 int OPTAB_DIRECT ;
 int Pmode ;
 int SImode ;
 int VOIDmode ;
 int const0_rtx ;
 int * const1_rtx ;
 int emit_barrier () ;
 int emit_cmp_and_jump_insns (int *,int ,int ,int ,int,int ,int *) ;
 int emit_insn (int ) ;
 int emit_jump_insn (int ) ;
 int emit_label (int *) ;
 int expand_float (int *,int *,int ) ;
 int * expand_simple_binop (int,int ,int *,int *,int *,int,int ) ;
 int * force_reg (int,int *) ;
 int gcc_assert (int) ;
 int gen_jump (int *) ;
 int * gen_label_rtx () ;
 int * gen_reg_rtx (int) ;
 int gen_rtx_FLOAT (int,int *) ;
 int gen_rtx_PLUS (int,int *,int *) ;
 int gen_rtx_SET (int ,int *,int ) ;

void
x86_emit_floatuns (rtx operands[2])
{
  rtx neglab, donelab, i0, i1, f0, in, out;
  enum machine_mode mode, inmode;

  inmode = GET_MODE (operands[1]);
  gcc_assert (inmode == SImode || inmode == DImode);

  out = operands[0];
  in = force_reg (inmode, operands[1]);
  mode = GET_MODE (out);
  neglab = gen_label_rtx ();
  donelab = gen_label_rtx ();
  i1 = gen_reg_rtx (Pmode);
  f0 = gen_reg_rtx (mode);

  emit_cmp_and_jump_insns (in, const0_rtx, LT, const0_rtx, Pmode, 0, neglab);

  emit_insn (gen_rtx_SET (VOIDmode, out, gen_rtx_FLOAT (mode, in)));
  emit_jump_insn (gen_jump (donelab));
  emit_barrier ();

  emit_label (neglab);

  i0 = expand_simple_binop (Pmode, LSHIFTRT, in, const1_rtx, ((void*)0), 1, OPTAB_DIRECT);
  i1 = expand_simple_binop (Pmode, AND, in, const1_rtx, ((void*)0), 1, OPTAB_DIRECT);
  i0 = expand_simple_binop (Pmode, IOR, i0, i1, i0, 1, OPTAB_DIRECT);
  expand_float (f0, i0, 0);
  emit_insn (gen_rtx_SET (VOIDmode, out, gen_rtx_PLUS (mode, f0, f0)));

  emit_label (donelab);
}
