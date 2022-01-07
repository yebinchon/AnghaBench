
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int rtx ;


 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_RTX_CLASS (scalar_t__) ;
 scalar_t__ MEM_EXPR (int ) ;
 int MEM_P (int ) ;
 scalar_t__ PLUS ;
 scalar_t__ REG_EXPR (int ) ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ RTX_BIN_ARITH ;
 scalar_t__ RTX_UNARY ;
 int XEXP (int ,int) ;

__attribute__((used)) static tree
get_mem_expr_from_op (rtx op, int *paddressp)
{
  tree expr;
  int inner_addressp;

  *paddressp = 0;

  if (REG_P (op))
    return REG_EXPR (op);
  else if (!MEM_P (op))
    return 0;

  if (MEM_EXPR (op) != 0)
    return MEM_EXPR (op);


  *paddressp = 1;
  op = XEXP (op, 0);




  if ((expr = get_mem_expr_from_op (op, &inner_addressp)) && ! inner_addressp)
    return expr;
  else if (GET_CODE (op) == PLUS
    && (expr = get_mem_expr_from_op (XEXP (op, 1), &inner_addressp)))
    return expr;

  while (GET_RTX_CLASS (GET_CODE (op)) == RTX_UNARY
  || GET_RTX_CLASS (GET_CODE (op)) == RTX_BIN_ARITH)
    op = XEXP (op, 0);

  expr = get_mem_expr_from_op (op, &inner_addressp);
  return inner_addressp ? 0 : expr;
}
