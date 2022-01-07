
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int REAL_VALUE_TYPE ;


 scalar_t__ CONST0_RTX (int) ;
 scalar_t__ CONST_DOUBLE ;


 scalar_t__ GET_CODE (scalar_t__) ;
 int GET_MODE (scalar_t__) ;

 scalar_t__ HONOR_INFINITIES (int) ;
 scalar_t__ HONOR_NANS (int) ;

 int LT ;
 int LTGT ;
 int NE ;

 int REAL_VALUE_FROM_CONST_DOUBLE (int ,scalar_t__) ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int) ;
 scalar_t__ TARGET_E500 ;
 int TARGET_FPRS ;
 scalar_t__ TARGET_HARD_FLOAT ;
 scalar_t__ TARGET_ISEL ;


 int UNGT ;
 int UNLE ;
 int UNLT ;
 int UNORDERED ;
 int VOIDmode ;
 int emit_insn (int ) ;
 scalar_t__ flag_trapping_math ;
 int gcc_unreachable () ;
 scalar_t__ gen_reg_rtx (int) ;
 scalar_t__ gen_rtx_ABS (int,scalar_t__) ;
 int gen_rtx_GE (int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_IF_THEN_ELSE (int,int ,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_MINUS (int,scalar_t__,scalar_t__) ;
 scalar_t__ gen_rtx_NEG (int,scalar_t__) ;
 int gen_rtx_SET (int ,scalar_t__,scalar_t__) ;
 scalar_t__ real_isinf (int *) ;
 int reverse_condition_maybe_unordered (int) ;
 int rs6000_compare_fp_p ;
 scalar_t__ rs6000_compare_op0 ;
 scalar_t__ rs6000_compare_op1 ;
 int rs6000_emit_int_cmove (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;
 int short_cint_operand (scalar_t__,int ) ;

int
rs6000_emit_cmove (rtx dest, rtx op, rtx true_cond, rtx false_cond)
{
  enum rtx_code code = GET_CODE (op);
  rtx op0 = rs6000_compare_op0;
  rtx op1 = rs6000_compare_op1;
  REAL_VALUE_TYPE c1;
  enum machine_mode compare_mode = GET_MODE (op0);
  enum machine_mode result_mode = GET_MODE (dest);
  rtx temp;
  bool is_against_zero;


  if (GET_MODE (op1) != compare_mode


      && (!TARGET_ISEL || !short_cint_operand (op1, VOIDmode)))
    return 0;
  if (GET_MODE (true_cond) != result_mode)
    return 0;
  if (GET_MODE (false_cond) != result_mode)
    return 0;



  if (! rs6000_compare_fp_p)
    {
      if (TARGET_ISEL)
 return rs6000_emit_int_cmove (dest, op, true_cond, false_cond);
      return 0;
    }
  else if (TARGET_E500 && TARGET_HARD_FLOAT && !TARGET_FPRS
    && SCALAR_FLOAT_MODE_P (compare_mode))
    return 0;

  is_against_zero = op1 == CONST0_RTX (compare_mode);






  if (SCALAR_FLOAT_MODE_P (compare_mode)
      && flag_trapping_math && ! is_against_zero)
    return 0;



  if (code == UNLT || code == UNGT || code == UNORDERED || code == NE
      || code == LTGT || code == LT || code == UNLE)
    {
      code = reverse_condition_maybe_unordered (code);
      temp = true_cond;
      true_cond = false_cond;
      false_cond = temp;
    }



  if (code == 129 && HONOR_NANS (compare_mode))
    return 0;

  if (GET_CODE (op1) == CONST_DOUBLE)
    REAL_VALUE_FROM_CONST_DOUBLE (c1, op1);






  if (HONOR_INFINITIES (compare_mode)
      && code != 132 && code != 128
      && (GET_CODE (op1) != CONST_DOUBLE || real_isinf (&c1))

      && ((! rtx_equal_p (op0, false_cond) && ! rtx_equal_p (op1, false_cond))
   || (! rtx_equal_p (op0, true_cond)
       && ! rtx_equal_p (op1, true_cond))))
    return 0;




  if (! is_against_zero)
    {
      temp = gen_reg_rtx (compare_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp,
         gen_rtx_MINUS (compare_mode, op0, op1)));
      op0 = temp;
      op1 = CONST0_RTX (compare_mode);
    }



  if (! HONOR_NANS (compare_mode))
    switch (code)
      {
      case 132:
 code = 131;
 temp = true_cond;
 true_cond = false_cond;
 false_cond = temp;
 break;
      case 128:
 code = 133;
 break;
      case 129:
 code = 134;
 break;
      default:
 break;
      }


  switch (code)
    {
    case 133:
      break;

    case 131:
      temp = gen_reg_rtx (compare_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp, gen_rtx_NEG (compare_mode, op0)));
      op0 = temp;
      break;

    case 130:
      temp = gen_reg_rtx (compare_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp, gen_rtx_ABS (compare_mode, op0)));
      op0 = temp;
      break;

    case 134:
      temp = gen_reg_rtx (compare_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp,
         gen_rtx_NEG (compare_mode,
        gen_rtx_ABS (compare_mode, op0))));
      op0 = temp;
      break;

    case 128:

      temp = gen_reg_rtx (result_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp,
         gen_rtx_IF_THEN_ELSE (result_mode,
          gen_rtx_GE (VOIDmode,
        op0, op1),
          true_cond, false_cond)));
      false_cond = true_cond;
      true_cond = temp;

      temp = gen_reg_rtx (compare_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp, gen_rtx_NEG (compare_mode, op0)));
      op0 = temp;
      break;

    case 132:

      temp = gen_reg_rtx (result_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp,
         gen_rtx_IF_THEN_ELSE (result_mode,
          gen_rtx_GE (VOIDmode,
        op0, op1),
          true_cond, false_cond)));
      true_cond = false_cond;
      false_cond = temp;

      temp = gen_reg_rtx (compare_mode);
      emit_insn (gen_rtx_SET (VOIDmode, temp, gen_rtx_NEG (compare_mode, op0)));
      op0 = temp;
      break;

    default:
      gcc_unreachable ();
    }

  emit_insn (gen_rtx_SET (VOIDmode, dest,
     gen_rtx_IF_THEN_ELSE (result_mode,
      gen_rtx_GE (VOIDmode,
           op0, op1),
      true_cond, false_cond)));
  return 1;
}
