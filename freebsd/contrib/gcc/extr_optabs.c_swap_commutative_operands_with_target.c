
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ rtx ;


 scalar_t__ REG_P (scalar_t__) ;
 int commutative_operand_precedence (scalar_t__) ;
 int rtx_equal_p (scalar_t__,scalar_t__) ;

__attribute__((used)) static bool
swap_commutative_operands_with_target (rtx target, rtx op0, rtx op1)
{
  int op0_prec = commutative_operand_precedence (op0);
  int op1_prec = commutative_operand_precedence (op1);

  if (op0_prec < op1_prec)
    return 1;

  if (op0_prec > op1_prec)
    return 0;



  if (target == 0 || REG_P (target))
    return (REG_P (op1) && !REG_P (op0)) || target == op1;
  else
    return rtx_equal_p (op1, target);
}
