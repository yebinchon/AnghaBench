
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ ARRAY_REF ;
 scalar_t__ CONSTANT_CLASS_P (scalar_t__) ;
 scalar_t__ CONSTRUCTOR ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ STRING_CST ;
 int STRIP_NOPS (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CONSTANT (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ cfun ;
 scalar_t__ folding_initializer ;
 scalar_t__ integer_one_node ;
 scalar_t__ integer_zero_node ;
 scalar_t__ integer_zerop (scalar_t__) ;

__attribute__((used)) static tree
fold_builtin_constant_p (tree arglist)
{
  if (arglist == 0)
    return 0;

  arglist = TREE_VALUE (arglist);




  STRIP_NOPS (arglist);


  if (CONSTANT_CLASS_P (arglist)
      || (TREE_CODE (arglist) == CONSTRUCTOR
   && TREE_CONSTANT (arglist)))
    return integer_one_node;
  if (TREE_CODE (arglist) == ADDR_EXPR)
    {
       tree op = TREE_OPERAND (arglist, 0);
       if (TREE_CODE (op) == STRING_CST
    || (TREE_CODE (op) == ARRAY_REF
        && integer_zerop (TREE_OPERAND (op, 1))
        && TREE_CODE (TREE_OPERAND (op, 0)) == STRING_CST))
  return integer_one_node;
    }
  if (TREE_SIDE_EFFECTS (arglist)
      || AGGREGATE_TYPE_P (TREE_TYPE (arglist))
      || POINTER_TYPE_P (TREE_TYPE (arglist))
      || cfun == 0
      || folding_initializer)
    return integer_zero_node;

  return 0;
}
