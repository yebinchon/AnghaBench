
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int force_reg (int,int ) ;
 int gen_reg_rtx (int) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_fmt_ee (int,int,int ,int ) ;
 int nonimmediate_operand (int ,int) ;
 scalar_t__ optimize ;
 scalar_t__ reg_overlap_mentioned_p (int ,int ) ;

__attribute__((used)) static rtx
ix86_expand_sse_cmp (rtx dest, enum rtx_code code, rtx cmp_op0, rtx cmp_op1,
       rtx op_true, rtx op_false)
{
  enum machine_mode mode = GET_MODE (dest);
  rtx x;

  cmp_op0 = force_reg (mode, cmp_op0);
  if (!nonimmediate_operand (cmp_op1, mode))
    cmp_op1 = force_reg (mode, cmp_op1);

  if (optimize
      || reg_overlap_mentioned_p (dest, op_true)
      || reg_overlap_mentioned_p (dest, op_false))
    dest = gen_reg_rtx (mode);

  x = gen_rtx_fmt_ee (code, mode, cmp_op0, cmp_op1);
  emit_insn (gen_rtx_SET (VOIDmode, dest, x));

  return dest;
}
