
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;
typedef enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int GET_CODE (scalar_t__) ;
 scalar_t__ XEXP (scalar_t__,int) ;
 scalar_t__ simplify_binary_operation (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ simplify_gen_binary (int,int,scalar_t__,scalar_t__) ;
 scalar_t__ swap_commutative_operands_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static rtx
simplify_associative_operation (enum rtx_code code, enum machine_mode mode,
    rtx op0, rtx op1)
{
  rtx tem;


  if (GET_CODE (op1) == code)
    {

      if (GET_CODE (op0) == code)
 {
   tem = simplify_gen_binary (code, mode, op0, XEXP (op1, 0));
   return simplify_gen_binary (code, mode, tem, XEXP (op1, 1));
 }


      if (! swap_commutative_operands_p (op1, op0))
 return simplify_gen_binary (code, mode, op1, op0);

      tem = op0;
      op0 = op1;
      op1 = tem;
    }

  if (GET_CODE (op0) == code)
    {

      if (swap_commutative_operands_p (XEXP (op0, 1), op1))
 {
   tem = simplify_gen_binary (code, mode, XEXP (op0, 0), op1);
   return simplify_gen_binary (code, mode, tem, XEXP (op0, 1));
 }


      tem = swap_commutative_operands_p (XEXP (op0, 1), op1)
     ? simplify_binary_operation (code, mode, op1, XEXP (op0, 1))
     : simplify_binary_operation (code, mode, XEXP (op0, 1), op1);
      if (tem != 0)
        return simplify_gen_binary (code, mode, XEXP (op0, 0), tem);


      tem = swap_commutative_operands_p (XEXP (op0, 0), op1)
     ? simplify_binary_operation (code, mode, op1, XEXP (op0, 0))
     : simplify_binary_operation (code, mode, XEXP (op0, 0), op1);
      if (tem != 0)
        return simplify_gen_binary (code, mode, tem, XEXP (op0, 1));
    }

  return 0;
}
