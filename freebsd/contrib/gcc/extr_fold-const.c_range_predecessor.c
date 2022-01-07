
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int MINUS_EXPR ;
 int NULL_TREE ;
 int TREE_TYPE (int ) ;
 int TYPE_MIN_VALUE (int ) ;
 int integer_one_node ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 int range_binop (int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static tree
range_predecessor (tree val)
{
  tree type = TREE_TYPE (val);

  if (INTEGRAL_TYPE_P (type)
      && operand_equal_p (val, TYPE_MIN_VALUE (type), 0))
    return 0;
  else
    return range_binop (MINUS_EXPR, NULL_TREE, val, 0, integer_one_node, 0);
}
