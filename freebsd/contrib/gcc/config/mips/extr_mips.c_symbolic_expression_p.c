
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 scalar_t__ ARITHMETIC_P (int ) ;
 scalar_t__ CONST ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ SYMBOL_REF ;
 scalar_t__ UNARY_P (int ) ;
 int XEXP (int ,int) ;

__attribute__((used)) static int
symbolic_expression_p (rtx x)
{
  if (GET_CODE (x) == SYMBOL_REF)
    return 1;

  if (GET_CODE (x) == CONST)
    return symbolic_expression_p (XEXP (x, 0));

  if (UNARY_P (x))
    return symbolic_expression_p (XEXP (x, 0));

  if (ARITHMETIC_P (x))
    return (symbolic_expression_p (XEXP (x, 0))
     || symbolic_expression_p (XEXP (x, 1)));

  return 0;
}
