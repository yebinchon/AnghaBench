
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONSTANT_P (int ) ;
 int ccp_jump ;
 int emit_cmp_and_jump_insn_1 (int ,int ,int,int,int,int ) ;
 int force_reg (int,int ) ;
 int gcc_assert (int ) ;
 int prepare_cmp_insn (int *,int *,int*,int ,int*,int*,int ) ;
 scalar_t__ swap_commutative_operands_p (int ,int ) ;
 int swap_condition (int) ;
 int unsigned_condition (int) ;

void
emit_cmp_and_jump_insns (rtx x, rtx y, enum rtx_code comparison, rtx size,
    enum machine_mode mode, int unsignedp, rtx label)
{
  rtx op0 = x, op1 = y;


  if (swap_commutative_operands_p (x, y))
    {


      gcc_assert (label);

      op0 = y, op1 = x;
      comparison = swap_condition (comparison);
    }
  if (unsignedp)
    comparison = unsigned_condition (comparison);

  prepare_cmp_insn (&op0, &op1, &comparison, size, &mode, &unsignedp,
      ccp_jump);
  emit_cmp_and_jump_insn_1 (op0, op1, mode, comparison, unsignedp, label);
}
