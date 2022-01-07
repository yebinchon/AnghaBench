
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_to_split {scalar_t__ base_var; scalar_t__ step; } ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (scalar_t__) ;
 int MULT ;
 int PLUS ;
 int SET_DEST (scalar_t__) ;
 int SET_SRC (scalar_t__) ;
 scalar_t__ copy_rtx (int ) ;
 int delete_insn (scalar_t__) ;
 int emit_insn_before (scalar_t__,scalar_t__) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int end_sequence () ;
 scalar_t__ force_operand (scalar_t__,scalar_t__) ;
 int gcc_assert (scalar_t__) ;
 scalar_t__ gen_int_mode (unsigned int,int) ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ get_insns () ;
 scalar_t__* get_ivts_expr (scalar_t__,struct iv_to_split*) ;
 scalar_t__ simplify_gen_binary (int ,int,scalar_t__,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;
 int start_sequence () ;
 scalar_t__ validate_change (scalar_t__,scalar_t__*,scalar_t__,int ) ;

__attribute__((used)) static void
split_iv (struct iv_to_split *ivts, rtx insn, unsigned delta)
{
  rtx expr, *loc, seq, incr, var;
  enum machine_mode mode = GET_MODE (ivts->base_var);
  rtx src, dest, set;


  if (!delta)
    expr = ivts->base_var;
  else
    {
      incr = simplify_gen_binary (MULT, mode,
      ivts->step, gen_int_mode (delta, mode));
      expr = simplify_gen_binary (PLUS, GET_MODE (ivts->base_var),
      ivts->base_var, incr);
    }


  loc = get_ivts_expr (single_set (insn), ivts);


  if (validate_change (insn, loc, expr, 0))
    return;


  start_sequence ();
  var = gen_reg_rtx (mode);
  expr = force_operand (expr, var);
  if (expr != var)
    emit_move_insn (var, expr);
  seq = get_insns ();
  end_sequence ();
  emit_insn_before (seq, insn);

  if (validate_change (insn, loc, var, 0))
    return;



  set = single_set (insn);
  gcc_assert (set);

  start_sequence ();
  *loc = var;
  src = copy_rtx (SET_SRC (set));
  dest = copy_rtx (SET_DEST (set));
  src = force_operand (src, dest);
  if (src != dest)
    emit_move_insn (dest, src);
  seq = get_insns ();
  end_sequence ();

  emit_insn_before (seq, insn);
  delete_insn (insn);
}
