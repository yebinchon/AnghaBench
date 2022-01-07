
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_RTX_CLASS (int) ;
 scalar_t__ RTX_COMM_ARITH ;
 scalar_t__ RTX_COMM_COMPARE ;
 scalar_t__ RTX_COMPARE ;
 scalar_t__ avoid_constant_pool_reference (scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ simplify_binary_operation_1 (int,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_const_binary_operation (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ swap_commutative_operands_p (scalar_t__,scalar_t__) ;

rtx
simplify_binary_operation (enum rtx_code code, enum machine_mode mode,
      rtx op0, rtx op1)
{
  rtx trueop0, trueop1;
  rtx tem;





  gcc_assert (GET_RTX_CLASS (code) != RTX_COMPARE);
  gcc_assert (GET_RTX_CLASS (code) != RTX_COMM_COMPARE);


  if (GET_RTX_CLASS (code) == RTX_COMM_ARITH
      && swap_commutative_operands_p (op0, op1))
    {
      tem = op0, op0 = op1, op1 = tem;
    }

  trueop0 = avoid_constant_pool_reference (op0);
  trueop1 = avoid_constant_pool_reference (op1);

  tem = simplify_const_binary_operation (code, mode, trueop0, trueop1);
  if (tem)
    return tem;
  return simplify_binary_operation_1 (code, mode, op0, op1, trueop0, trueop1);
}
