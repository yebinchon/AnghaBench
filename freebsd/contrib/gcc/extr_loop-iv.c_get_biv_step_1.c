
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref {int dummy; } ;
typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum iv_grd_result { ____Placeholder_iv_grd_result } iv_grd_result ;


 int CONSTANT_P (scalar_t__) ;
 scalar_t__ DF_REF_INSN (struct df_ref*) ;
 int const GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;
 scalar_t__ GET_MODE_SIZE (int) ;
 int GRD_INVALID ;
 int GRD_INVARIANT ;
 int GRD_MAYBE_BIV ;

 scalar_t__ NULL_RTX ;


 scalar_t__ SET_SRC (scalar_t__) ;


 scalar_t__ SUBREG_REG (scalar_t__) ;
 int UNKNOWN ;
 scalar_t__ XEXP (scalar_t__,int) ;

 scalar_t__ const0_rtx ;
 scalar_t__ find_reg_equal_equiv_note (scalar_t__) ;
 int gcc_assert (int) ;
 int iv_get_reaching_def (scalar_t__,scalar_t__,struct df_ref**) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 int simple_reg_p (scalar_t__) ;
 scalar_t__ simplify_gen_binary (int const,int,scalar_t__,scalar_t__) ;
 scalar_t__ single_set (scalar_t__) ;
 int subreg_lowpart_p (scalar_t__) ;

__attribute__((used)) static bool
get_biv_step_1 (struct df_ref *def, rtx reg,
  rtx *inner_step, enum machine_mode *inner_mode,
  enum rtx_code *extend, enum machine_mode outer_mode,
  rtx *outer_step)
{
  rtx set, rhs, op0 = NULL_RTX, op1 = NULL_RTX;
  rtx next, nextr, tmp;
  enum rtx_code code;
  rtx insn = DF_REF_INSN (def);
  struct df_ref *next_def;
  enum iv_grd_result res;

  set = single_set (insn);
  if (!set)
    return 0;

  rhs = find_reg_equal_equiv_note (insn);
  if (rhs)
    rhs = XEXP (rhs, 0);
  else
    rhs = SET_SRC (set);

  code = GET_CODE (rhs);
  switch (code)
    {
    case 129:
    case 131:
      next = rhs;
      break;

    case 132:
    case 133:
      op0 = XEXP (rhs, 0);
      op1 = XEXP (rhs, 1);

      if (code == 132 && CONSTANT_P (op0))
 {
   tmp = op0; op0 = op1; op1 = tmp;
 }

      if (!simple_reg_p (op0)
   || !CONSTANT_P (op1))
 return 0;

      if (GET_MODE (rhs) != outer_mode)
 {
   if (GET_CODE (op0) != 129)
     return 0;
   if (GET_MODE (SUBREG_REG (op0)) != outer_mode)
     return 0;
 }

      next = op0;
      break;

    case 130:
    case 128:
      if (GET_MODE (rhs) != outer_mode)
 return 0;

      op0 = XEXP (rhs, 0);
      if (!simple_reg_p (op0))
 return 0;

      next = op0;
      break;

    default:
      return 0;
    }

  if (GET_CODE (next) == 129)
    {
      if (!subreg_lowpart_p (next))
 return 0;

      nextr = SUBREG_REG (next);
      if (GET_MODE (nextr) != outer_mode)
 return 0;
    }
  else
    nextr = next;

  res = iv_get_reaching_def (insn, nextr, &next_def);

  if (res == GRD_INVALID || res == GRD_INVARIANT)
    return 0;

  if (res == GRD_MAYBE_BIV)
    {
      if (!rtx_equal_p (nextr, reg))
 return 0;

      *inner_step = const0_rtx;
      *extend = UNKNOWN;
      *inner_mode = outer_mode;
      *outer_step = const0_rtx;
    }
  else if (!get_biv_step_1 (next_def, reg,
       inner_step, inner_mode, extend, outer_mode,
       outer_step))
    return 0;

  if (GET_CODE (next) == 129)
    {
      enum machine_mode amode = GET_MODE (next);

      if (GET_MODE_SIZE (amode) > GET_MODE_SIZE (*inner_mode))
 return 0;

      *inner_mode = amode;
      *inner_step = simplify_gen_binary (132, outer_mode,
      *inner_step, *outer_step);
      *outer_step = const0_rtx;
      *extend = UNKNOWN;
    }

  switch (code)
    {
    case 131:
    case 129:
      break;

    case 132:
    case 133:
      if (*inner_mode == outer_mode

   || GET_MODE (rhs) != outer_mode)
 *inner_step = simplify_gen_binary (code, outer_mode,
        *inner_step, op1);
      else
 *outer_step = simplify_gen_binary (code, outer_mode,
        *outer_step, op1);
      break;

    case 130:
    case 128:
      gcc_assert (GET_MODE (op0) == *inner_mode
    && *extend == UNKNOWN
    && *outer_step == const0_rtx);

      *extend = code;
      break;

    default:
      return 0;
    }

  return 1;
}
