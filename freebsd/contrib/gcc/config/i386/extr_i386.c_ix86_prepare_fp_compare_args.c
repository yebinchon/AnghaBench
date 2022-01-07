
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int CCFPUmode ;
 scalar_t__ CONSTANT_P (int ) ;
 scalar_t__ FLOAT ;
 scalar_t__ GET_CODE (int ) ;
 int GET_MODE (int ) ;
 scalar_t__ MEM ;
 scalar_t__ REG ;
 scalar_t__ SSE_FLOAT_MODE_P (int) ;
 scalar_t__ TARGET_CMOVE ;
 scalar_t__ TARGET_SSE_MATH ;
 int XFmode ;
 int force_const_mem (int,int ) ;
 int force_reg (int,int ) ;
 int ix86_fp_compare_mode (int) ;
 scalar_t__ ix86_fp_comparison_cost (int) ;
 scalar_t__ ix86_use_fcomi_compare (int) ;
 int no_new_pseudos ;
 int standard_80387_constant_p (int ) ;
 int swap_condition (int) ;
 int validize_mem (int ) ;

__attribute__((used)) static enum rtx_code
ix86_prepare_fp_compare_args (enum rtx_code code, rtx *pop0, rtx *pop1)
{
  enum machine_mode fpcmp_mode = ix86_fp_compare_mode (code);
  rtx op0 = *pop0, op1 = *pop1;
  enum machine_mode op_mode = GET_MODE (op0);
  int is_sse = TARGET_SSE_MATH && SSE_FLOAT_MODE_P (op_mode);







  if (!is_sse
      && (fpcmp_mode == CCFPUmode
   || (op_mode == XFmode
       && ! (standard_80387_constant_p (op0) == 1
      || standard_80387_constant_p (op1) == 1)
       && GET_CODE (op1) != FLOAT)
   || ix86_use_fcomi_compare (code)))
    {
      op0 = force_reg (op_mode, op0);
      op1 = force_reg (op_mode, op1);
    }
  else
    {




      if (standard_80387_constant_p (op0) == 0
   || (GET_CODE (op0) == MEM
       && ! (standard_80387_constant_p (op1) == 0
      || GET_CODE (op1) == MEM)))
 {
   rtx tmp;
   tmp = op0, op0 = op1, op1 = tmp;
   code = swap_condition (code);
 }

      if (GET_CODE (op0) != REG)
 op0 = force_reg (op_mode, op0);

      if (CONSTANT_P (op1))
 {
   int tmp = standard_80387_constant_p (op1);
   if (tmp == 0)
     op1 = validize_mem (force_const_mem (op_mode, op1));
   else if (tmp == 1)
     {
       if (TARGET_CMOVE)
  op1 = force_reg (op_mode, op1);
     }
   else
     op1 = force_reg (op_mode, op1);
 }
    }


  if (ix86_fp_comparison_cost (code)
      > ix86_fp_comparison_cost (swap_condition (code))
      && (GET_CODE (op1) == REG || !no_new_pseudos))
    {
      rtx tmp;
      tmp = op0, op0 = op1, op1 = tmp;
      code = swap_condition (code);
      if (GET_CODE (op0) != REG)
 op0 = force_reg (op_mode, op0);
    }

  *pop0 = op0;
  *pop1 = op1;
  return code;
}
