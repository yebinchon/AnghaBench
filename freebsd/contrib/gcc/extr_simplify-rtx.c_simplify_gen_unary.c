
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int gen_rtx_fmt_e (int,int,int ) ;
 int simplify_unary_operation (int,int,int ,int) ;

rtx
simplify_gen_unary (enum rtx_code code, enum machine_mode mode, rtx op,
      enum machine_mode op_mode)
{
  rtx tem;


  if ((tem = simplify_unary_operation (code, mode, op, op_mode)) != 0)
    return tem;

  return gen_rtx_fmt_e (code, mode, op);
}
