
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;


 int GET_MODE (void*) ;
 void* NULL_RTX ;
 scalar_t__ SCALAR_FLOAT_MODE_P (int ) ;
 int VOIDmode ;
 int const0_rtx ;
 void* gen_rtx_fmt_ee (int,int ,void*,int ) ;
 void* ix86_compare_emitted ;
 void* ix86_compare_op0 ;
 void* ix86_compare_op1 ;
 void* ix86_expand_fp_compare (int,void*,void*,void*,void**,void**) ;
 void* ix86_expand_int_compare (int,void*,void*) ;

rtx
ix86_expand_compare (enum rtx_code code, rtx *second_test, rtx *bypass_test)
{
  rtx op0, op1, ret;
  op0 = ix86_compare_op0;
  op1 = ix86_compare_op1;

  if (second_test)
    *second_test = NULL_RTX;
  if (bypass_test)
    *bypass_test = NULL_RTX;

  if (ix86_compare_emitted)
    {
      ret = gen_rtx_fmt_ee (code, VOIDmode, ix86_compare_emitted, const0_rtx);
      ix86_compare_emitted = NULL_RTX;
    }
  else if (SCALAR_FLOAT_MODE_P (GET_MODE (op0)))
    ret = ix86_expand_fp_compare (code, op0, op1, NULL_RTX,
      second_test, bypass_test);
  else
    ret = ix86_expand_int_compare (code, op0, op1);

  return ret;
}
