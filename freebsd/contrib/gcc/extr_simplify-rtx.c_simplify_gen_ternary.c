
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int gen_rtx_fmt_eee (int,int,int ,int ,int ) ;
 int simplify_ternary_operation (int,int,int,int ,int ,int ) ;

rtx
simplify_gen_ternary (enum rtx_code code, enum machine_mode mode,
        enum machine_mode op0_mode, rtx op0, rtx op1, rtx op2)
{
  rtx tem;


  if (0 != (tem = simplify_ternary_operation (code, mode, op0_mode,
           op0, op1, op2)))
    return tem;

  return gen_rtx_fmt_eee (code, mode, op0, op1, op2);
}
