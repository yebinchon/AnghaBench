
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 int NE ;
 int QImode ;
 scalar_t__ SSE_FLOAT_MODE_P (int) ;
 scalar_t__ TARGET_SSE_MATH ;
 int UNKNOWN ;
 int VOIDmode ;
 scalar_t__ const0_rtx ;
 int emit_insn (int ) ;
 int emit_move_insn (scalar_t__,scalar_t__) ;
 int fcmov_comparison_operator (scalar_t__,int) ;
 int gcc_assert (int) ;
 scalar_t__ gen_reg_rtx (int) ;
 int gen_rtx_IF_THEN_ELSE (int,scalar_t__,scalar_t__,scalar_t__) ;
 int gen_rtx_SET (int,scalar_t__,int ) ;
 scalar_t__ ix86_compare_op0 ;
 scalar_t__ ix86_compare_op1 ;
 scalar_t__ ix86_expand_compare (int,scalar_t__*,scalar_t__*) ;
 int ix86_expand_setcc (int,scalar_t__) ;
 scalar_t__ ix86_expand_sse_cmp (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ ix86_expand_sse_fp_minmax (scalar_t__,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ix86_expand_sse_movcc (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int ix86_prepare_sse_fp_compare_args (scalar_t__,int,scalar_t__*,scalar_t__*) ;
 scalar_t__ reg_overlap_mentioned_p (scalar_t__,scalar_t__) ;

int
ix86_expand_fp_movcc (rtx operands[])
{
  enum machine_mode mode = GET_MODE (operands[0]);
  enum rtx_code code = GET_CODE (operands[1]);
  rtx tmp, compare_op, second_test, bypass_test;

  if (TARGET_SSE_MATH && SSE_FLOAT_MODE_P (mode))
    {
      enum machine_mode cmode;




      cmode = GET_MODE (ix86_compare_op0);
      if (cmode == VOIDmode)
 cmode = GET_MODE (ix86_compare_op1);
      if (cmode != mode)
 return 0;

      code = ix86_prepare_sse_fp_compare_args (operands[0], code,
            &ix86_compare_op0,
            &ix86_compare_op1);
      if (code == UNKNOWN)
 return 0;

      if (ix86_expand_sse_fp_minmax (operands[0], code, ix86_compare_op0,
         ix86_compare_op1, operands[2],
         operands[3]))
 return 1;

      tmp = ix86_expand_sse_cmp (operands[0], code, ix86_compare_op0,
     ix86_compare_op1, operands[2], operands[3]);
      ix86_expand_sse_movcc (operands[0], tmp, operands[2], operands[3]);
      return 1;
    }




  compare_op = ix86_expand_compare (code, &second_test, &bypass_test);




  if (!fcmov_comparison_operator (compare_op, VOIDmode))
    {
      gcc_assert (!second_test && !bypass_test);
      tmp = gen_reg_rtx (QImode);
      ix86_expand_setcc (code, tmp);
      code = NE;
      ix86_compare_op0 = tmp;
      ix86_compare_op1 = const0_rtx;
      compare_op = ix86_expand_compare (code, &second_test, &bypass_test);
    }
  if (bypass_test && reg_overlap_mentioned_p (operands[0], operands[3]))
    {
      tmp = gen_reg_rtx (mode);
      emit_move_insn (tmp, operands[3]);
      operands[3] = tmp;
    }
  if (second_test && reg_overlap_mentioned_p (operands[0], operands[2]))
    {
      tmp = gen_reg_rtx (mode);
      emit_move_insn (tmp, operands[2]);
      operands[2] = tmp;
    }

  emit_insn (gen_rtx_SET (VOIDmode, operands[0],
     gen_rtx_IF_THEN_ELSE (mode, compare_op,
      operands[2], operands[3])));
  if (bypass_test)
    emit_insn (gen_rtx_SET (VOIDmode, operands[0],
       gen_rtx_IF_THEN_ELSE (mode, bypass_test,
        operands[3], operands[0])));
  if (second_test)
    emit_insn (gen_rtx_SET (VOIDmode, operands[0],
       gen_rtx_IF_THEN_ELSE (mode, second_test,
        operands[2], operands[0])));

  return 1;
}
