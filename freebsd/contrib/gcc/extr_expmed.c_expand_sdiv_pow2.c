
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ rtx ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int BRANCH_COST ;
 scalar_t__ COSTS_N_INSNS (int) ;
 int GE ;
 scalar_t__ GEN_INT (int) ;
 int GET_MODE_BITSIZE (int) ;
 int LT ;
 int NULL_RTX ;
 int NULL_TREE ;
 int OPTAB_LIB_WIDEN ;
 int RSHIFT_EXPR ;
 int add_optab ;
 int and_optab ;
 int build_int_cst (int ,int) ;
 int const0_rtx ;
 scalar_t__ copy_to_mode_reg (int,scalar_t__) ;
 int do_cmp_and_jump (scalar_t__,int ,int ,int,scalar_t__) ;
 int do_pending_stack_adjust () ;
 scalar_t__ emit_conditional_move (scalar_t__,int ,scalar_t__,int ,int,scalar_t__,scalar_t__,int,int ) ;
 int emit_insn (scalar_t__) ;
 int emit_label (scalar_t__) ;
 scalar_t__ emit_store_flag (scalar_t__,int ,scalar_t__,int ,int,int ,int) ;
 int end_sequence () ;
 scalar_t__ expand_binop (int,int ,scalar_t__,scalar_t__,int ,int ,int ) ;
 int expand_inc (scalar_t__,scalar_t__) ;
 scalar_t__ expand_shift (int ,int,scalar_t__,int ,int ,int) ;
 int floor_log2 (int) ;
 scalar_t__ force_reg (int,scalar_t__) ;
 scalar_t__ gen_label_rtx () ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ get_insns () ;
 scalar_t__** shift_cost ;
 int start_sequence () ;

__attribute__((used)) static rtx
expand_sdiv_pow2 (enum machine_mode mode, rtx op0, HOST_WIDE_INT d)
{
  rtx temp, label;
  tree shift;
  int logd;

  logd = floor_log2 (d);
  shift = build_int_cst (NULL_TREE, logd);

  if (d == 2 && BRANCH_COST >= 1)
    {
      temp = gen_reg_rtx (mode);
      temp = emit_store_flag (temp, LT, op0, const0_rtx, mode, 0, 1);
      temp = expand_binop (mode, add_optab, temp, op0, NULL_RTX,
      0, OPTAB_LIB_WIDEN);
      return expand_shift (RSHIFT_EXPR, mode, temp, shift, NULL_RTX, 0);
    }
  if (BRANCH_COST >= 2)
    {
      int ushift = GET_MODE_BITSIZE (mode) - logd;

      temp = gen_reg_rtx (mode);
      temp = emit_store_flag (temp, LT, op0, const0_rtx, mode, 0, -1);
      if (shift_cost[mode][ushift] > COSTS_N_INSNS (1))
 temp = expand_binop (mode, and_optab, temp, GEN_INT (d - 1),
        NULL_RTX, 0, OPTAB_LIB_WIDEN);
      else
 temp = expand_shift (RSHIFT_EXPR, mode, temp,
        build_int_cst (NULL_TREE, ushift),
        NULL_RTX, 1);
      temp = expand_binop (mode, add_optab, temp, op0, NULL_RTX,
      0, OPTAB_LIB_WIDEN);
      return expand_shift (RSHIFT_EXPR, mode, temp, shift, NULL_RTX, 0);
    }

  label = gen_label_rtx ();
  temp = copy_to_mode_reg (mode, op0);
  do_cmp_and_jump (temp, const0_rtx, GE, mode, label);
  expand_inc (temp, GEN_INT (d - 1));
  emit_label (label);
  return expand_shift (RSHIFT_EXPR, mode, temp, shift, NULL_RTX, 0);
}
