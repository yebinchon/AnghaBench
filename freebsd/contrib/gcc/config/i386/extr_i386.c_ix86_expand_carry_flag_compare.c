
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CCFPUmode ;
 scalar_t__ CCFPmode ;
 int CONST_INT ;
 int DImode ;

 scalar_t__ FLOAT_MODE_P (int) ;

 int GET_CODE (void*) ;
 int GET_MODE (void*) ;
 int GET_MODE_BITSIZE (int) ;



 int INTEGRAL_MODE_P (int) ;
 int INTVAL (void*) ;



 int LTGT ;


 int NULL_RTX ;
 int ORDERED ;
 scalar_t__ TARGET_64BIT ;
 int TARGET_IEEE_FP ;
 int TImode ;
 int UNEQ ;
 int UNGT ;
 int UNLE ;
 int UNORDERED ;
 scalar_t__ VOIDmode ;
 void* XEXP (void*,int ) ;
 void* const0_rtx ;
 void* const1_rtx ;
 void* constm1_rtx ;
 int emit_insn (void*) ;
 int end_sequence () ;
 void* force_reg (int,void*) ;
 int gcc_assert (int) ;
 void* gen_int_mode (int,int) ;
 void* get_insns () ;
 void* ix86_compare_op0 ;
 void* ix86_compare_op1 ;
 void* ix86_expand_compare (int,int *,int *) ;
 void* ix86_expand_fp_compare (int,void*,void*,int ,void**,void**) ;
 int ix86_fp_compare_code_to_integer (int) ;
 scalar_t__ no_new_pseudos ;
 int nonimmediate_operand (void*,scalar_t__) ;
 int start_sequence () ;
 int swap_condition (int) ;
 int x86_64_immediate_operand (void*,int) ;

__attribute__((used)) static bool
ix86_expand_carry_flag_compare (enum rtx_code code, rtx op0, rtx op1, rtx *pop)
{
  enum machine_mode mode =
    GET_MODE (op0) != VOIDmode ? GET_MODE (op0) : GET_MODE (op1);



  if (mode == (TARGET_64BIT ? TImode : DImode))
    return 0;
  if (FLOAT_MODE_P (mode))
    {
      rtx second_test = ((void*)0), bypass_test = ((void*)0);
      rtx compare_op, compare_seq;


      if (code == 137 || code == 128 || code == UNEQ || code == LTGT
   || code == ORDERED || code == UNORDERED)
 return 0;


      if ((code == 134 || code == UNLE || code == 132 || code == UNGT)
   && !TARGET_IEEE_FP)
 {
   rtx tmp = op0;
   op0 = op1;
   op1 = tmp;
   code = swap_condition (code);
 }




      start_sequence ();
      compare_op = ix86_expand_fp_compare (code, op0, op1, NULL_RTX,
        &second_test, &bypass_test);
      compare_seq = get_insns ();
      end_sequence ();

      if (second_test || bypass_test)
 return 0;
      if (GET_MODE (XEXP (compare_op, 0)) == CCFPmode
   || GET_MODE (XEXP (compare_op, 0)) == CCFPUmode)
        code = ix86_fp_compare_code_to_integer (GET_CODE (compare_op));
      else
 code = GET_CODE (compare_op);
      if (code != 129 && code != 135)
 return 0;
      emit_insn (compare_seq);
      *pop = compare_op;
      return 1;
    }
  if (!INTEGRAL_MODE_P (mode))
    return 0;
  switch (code)
    {
    case 129:
    case 135:
      break;


    case 137:
    case 128:
      if (op1 != const0_rtx)
 return 0;
      op1 = const1_rtx;
      code = (code == 137 ? 129 : 135);
      break;


    case 133:
    case 131:
      if (GET_CODE (op1) == CONST_INT)
 {
   op1 = gen_int_mode (INTVAL (op1) + 1, GET_MODE (op0));


   if (op1 == const0_rtx
       || !x86_64_immediate_operand (op1, GET_MODE (op1)))
     return 0;
   code = (code == 133 ? 135 : 129);
 }
      else
 {
   rtx tmp = op1;
   op1 = op0;
   op0 = tmp;
   code = (code == 133 ? 129 : 135);
 }
      break;


    case 130:
    case 136:
      if (mode == DImode || op1 != const0_rtx)
 return 0;
      op1 = gen_int_mode (1 << (GET_MODE_BITSIZE (mode) - 1), mode);
      code = (code == 130 ? 135 : 129);
      break;
    case 132:
    case 134:
      if (mode == DImode || op1 != constm1_rtx)
 return 0;
      op1 = gen_int_mode (1 << (GET_MODE_BITSIZE (mode) - 1), mode);
      code = (code == 132 ? 135 : 129);
      break;

    default:
      return 0;
    }

  if (!nonimmediate_operand (op0, VOIDmode))
    {
      if (no_new_pseudos)
 return 0;
      op0 = force_reg (mode, op0);
    }
  ix86_compare_op0 = op0;
  ix86_compare_op1 = op1;
  *pop = ix86_expand_compare (code, ((void*)0), ((void*)0));
  gcc_assert (GET_CODE (*pop) == 129 || GET_CODE (*pop) == 135);
  return 1;
}
