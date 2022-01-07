
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int HONOR_SIGN_DEPENDENT_ROUNDING (int ) ;


 int NULL_TREE ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int fold_build2 (int,int ,int ,int ) ;

tree
fold_strip_sign_ops (tree exp)
{
  tree arg0, arg1;

  switch (TREE_CODE (exp))
    {
    case 131:
    case 129:
      arg0 = fold_strip_sign_ops (TREE_OPERAND (exp, 0));
      return arg0 ? arg0 : TREE_OPERAND (exp, 0);

    case 130:
    case 128:
      if (HONOR_SIGN_DEPENDENT_ROUNDING (TYPE_MODE (TREE_TYPE (exp))))
 return NULL_TREE;
      arg0 = fold_strip_sign_ops (TREE_OPERAND (exp, 0));
      arg1 = fold_strip_sign_ops (TREE_OPERAND (exp, 1));
      if (arg0 != NULL_TREE || arg1 != NULL_TREE)
 return fold_build2 (TREE_CODE (exp), TREE_TYPE (exp),
       arg0 ? arg0 : TREE_OPERAND (exp, 0),
       arg1 ? arg1 : TREE_OPERAND (exp, 1));
      break;

    default:
      break;
    }
  return NULL_TREE;
}
