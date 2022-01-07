
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CHREC_LEFT (int ) ;
 int CHREC_RIGHT (int ) ;
 int CHREC_VARIABLE (int ) ;
 scalar_t__ CONVERT_EXPR ;
 int INTEGRAL_TYPE_P (int ) ;
 scalar_t__ NOP_EXPR ;
 int NULL_TREE ;
 scalar_t__ POLYNOMIAL_CHREC ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 int build_polynomial_chrec (int ,int ,int ) ;
 int chrec_convert (int ,int ,int ) ;

__attribute__((used)) static tree
fold_used_pointer_cast (tree expr)
{
  tree op;
  tree type, inner_type;

  if (TREE_CODE (expr) != NOP_EXPR && TREE_CODE (expr) != CONVERT_EXPR)
    return expr;

  op = TREE_OPERAND (expr, 0);
  if (TREE_CODE (op) != POLYNOMIAL_CHREC)
    return expr;

  type = TREE_TYPE (expr);
  inner_type = TREE_TYPE (op);

  if (!INTEGRAL_TYPE_P (inner_type)
      || TYPE_PRECISION (inner_type) != TYPE_PRECISION (type))
    return expr;

  return build_polynomial_chrec (CHREC_VARIABLE (op),
  chrec_convert (type, CHREC_LEFT (op), NULL_TREE),
  chrec_convert (type, CHREC_RIGHT (op), NULL_TREE));
}
