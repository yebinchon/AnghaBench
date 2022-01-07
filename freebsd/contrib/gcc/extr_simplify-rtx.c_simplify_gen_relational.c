
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int gen_rtx_fmt_ee (int,int,int ,int ) ;
 int simplify_relational_operation (int,int,int,int ,int ) ;

rtx
simplify_gen_relational (enum rtx_code code, enum machine_mode mode,
    enum machine_mode cmp_mode, rtx op0, rtx op1)
{
  rtx tem;

  if (0 != (tem = simplify_relational_operation (code, mode, cmp_mode,
       op0, op1)))
    return tem;

  return gen_rtx_fmt_ee (code, mode, op0, op1);
}
