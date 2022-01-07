
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ CONST ;
 scalar_t__ GET_CODE (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int ) ;
 scalar_t__ avoid_constant_pool_reference (scalar_t__) ;
 scalar_t__ simplify_const_unary_operation (int,int,scalar_t__,int) ;
 scalar_t__ simplify_unary_operation_1 (int,int,scalar_t__) ;

rtx
simplify_unary_operation (enum rtx_code code, enum machine_mode mode,
     rtx op, enum machine_mode op_mode)
{
  rtx trueop, tem;

  if (GET_CODE (op) == CONST)
    op = XEXP (op, 0);

  trueop = avoid_constant_pool_reference (op);

  tem = simplify_const_unary_operation (code, mode, trueop, op_mode);
  if (tem)
    return tem;

  return simplify_unary_operation_1 (code, mode, op);
}
