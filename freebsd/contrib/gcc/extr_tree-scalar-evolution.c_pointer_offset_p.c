
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CONVERT_EXPR ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static bool
pointer_offset_p (tree expr)
{
  if (TREE_CODE (expr) == INTEGER_CST)
    return 1;

  if ((TREE_CODE (expr) == NOP_EXPR || TREE_CODE (expr) == CONVERT_EXPR)
      && INTEGRAL_TYPE_P (TREE_TYPE (TREE_OPERAND (expr, 0))))
    return 1;

  return 0;
}
