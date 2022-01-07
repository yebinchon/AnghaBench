
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef int rtvec ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_MODE (int ) ;
 int LT ;
 int SMAX ;
 int SMIN ;
 int UNGE ;
 int UNSPEC_IEEE_MAX ;
 int UNSPEC_IEEE_MIN ;
 int VOIDmode ;
 int emit_insn (int ) ;
 int flag_finite_math_only ;
 int flag_unsafe_math_optimizations ;
 int force_reg (int,int ) ;
 int gen_rtvec (int,int ,int ) ;
 int gen_rtx_SET (int ,int ,int ) ;
 int gen_rtx_UNSPEC (int,int ,int) ;
 int gen_rtx_fmt_ee (int,int,int ,int ) ;
 scalar_t__ rtx_equal_p (int ,int ) ;

__attribute__((used)) static bool
ix86_expand_sse_fp_minmax (rtx dest, enum rtx_code code, rtx cmp_op0,
      rtx cmp_op1, rtx if_true, rtx if_false)
{
  enum machine_mode mode;
  bool is_min;
  rtx tmp;

  if (code == LT)
    ;
  else if (code == UNGE)
    {
      tmp = if_true;
      if_true = if_false;
      if_false = tmp;
    }
  else
    return 0;

  if (rtx_equal_p (cmp_op0, if_true) && rtx_equal_p (cmp_op1, if_false))
    is_min = 1;
  else if (rtx_equal_p (cmp_op1, if_true) && rtx_equal_p (cmp_op0, if_false))
    is_min = 0;
  else
    return 0;

  mode = GET_MODE (dest);



  if (!flag_finite_math_only || !flag_unsafe_math_optimizations)
    {
      int u = is_min ? UNSPEC_IEEE_MIN : UNSPEC_IEEE_MAX;
      rtvec v;

      if_true = force_reg (mode, if_true);
      v = gen_rtvec (2, if_true, if_false);
      tmp = gen_rtx_UNSPEC (mode, v, u);
    }
  else
    {
      code = is_min ? SMIN : SMAX;
      tmp = gen_rtx_fmt_ee (code, mode, if_true, if_false);
    }

  emit_insn (gen_rtx_SET (VOIDmode, dest, tmp));
  return 1;
}
