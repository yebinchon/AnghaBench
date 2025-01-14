
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ INTEGER_CST ;
 scalar_t__ INTEGER_TYPE ;
 int MINUS_EXPR ;
 int MULT_EXPR ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TYPE_IS_SIZETYPE (scalar_t__) ;
 scalar_t__ error_mark_node ;
 scalar_t__ fold_build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 int gcc_assert (int) ;
 scalar_t__ int_const_binop (int,scalar_t__,scalar_t__,int ) ;
 scalar_t__ integer_onep (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;

tree
size_binop (enum tree_code code, tree arg0, tree arg1)
{
  tree type = TREE_TYPE (arg0);

  if (arg0 == error_mark_node || arg1 == error_mark_node)
    return error_mark_node;

  gcc_assert (TREE_CODE (type) == INTEGER_TYPE && TYPE_IS_SIZETYPE (type)
       && type == TREE_TYPE (arg1));


  if (TREE_CODE (arg0) == INTEGER_CST && TREE_CODE (arg1) == INTEGER_CST)
    {

      if (code == PLUS_EXPR && integer_zerop (arg0))
 return arg1;
      else if ((code == MINUS_EXPR || code == PLUS_EXPR)
        && integer_zerop (arg1))
 return arg0;
      else if (code == MULT_EXPR && integer_onep (arg0))
 return arg1;


      return int_const_binop (code, arg0, arg1, 0);
    }

  return fold_build2 (code, type, arg0, arg1);
}
