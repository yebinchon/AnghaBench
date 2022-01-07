
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONVERT_EXPR ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 int INTEGRAL_TYPE_P (int ) ;
 scalar_t__ NOP_EXPR ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;

__attribute__((used)) static tree
strip_conversion (tree expr)
{
  tree to, ti, oprnd0;

  while (TREE_CODE (expr) == NOP_EXPR || TREE_CODE (expr) == CONVERT_EXPR)
    {
      to = TREE_TYPE (expr);
      oprnd0 = TREE_OPERAND (expr, 0);
      ti = TREE_TYPE (oprnd0);

      if (!INTEGRAL_TYPE_P (to) || !INTEGRAL_TYPE_P (ti))
 return NULL_TREE;
      if (GET_MODE_SIZE (TYPE_MODE (to)) < GET_MODE_SIZE (TYPE_MODE (ti)))
 return NULL_TREE;

      expr = oprnd0;
    }
  return expr;
}
