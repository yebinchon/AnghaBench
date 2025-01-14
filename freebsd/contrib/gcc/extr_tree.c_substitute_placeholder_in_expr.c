
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 scalar_t__ BINARY_CLASS_P (scalar_t__) ;
 scalar_t__ COMPOUND_EXPR ;
 scalar_t__ COND_EXPR ;
 scalar_t__ EXPRESSION_CLASS_P (scalar_t__) ;
 int INDIRECT_REF ;
 int PLACEHOLDER_EXPR ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ REFERENCE_CLASS_P (scalar_t__) ;
 scalar_t__ SUBSTITUTE_PLACEHOLDER_IN_EXPR (scalar_t__,scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_CODE_CLASS (int) ;
 int TREE_CODE_LENGTH (int) ;
 int TREE_LIST ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_PURPOSE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ UNARY_CLASS_P (scalar_t__) ;
 int build4 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold (int ) ;
 scalar_t__ fold_build1 (int,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build2 (int,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_build3 (int,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int gcc_unreachable () ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;

tree
substitute_placeholder_in_expr (tree exp, tree obj)
{
  enum tree_code code = TREE_CODE (exp);
  tree op0, op1, op2, op3;



  if (code == PLACEHOLDER_EXPR)
    {
      tree need_type = TYPE_MAIN_VARIANT (TREE_TYPE (exp));
      tree elt;

      for (elt = obj; elt != 0;
    elt = ((TREE_CODE (elt) == COMPOUND_EXPR
     || TREE_CODE (elt) == COND_EXPR)
    ? TREE_OPERAND (elt, 1)
    : (REFERENCE_CLASS_P (elt)
       || UNARY_CLASS_P (elt)
       || BINARY_CLASS_P (elt)
       || EXPRESSION_CLASS_P (elt))
    ? TREE_OPERAND (elt, 0) : 0))
 if (TYPE_MAIN_VARIANT (TREE_TYPE (elt)) == need_type)
   return elt;

      for (elt = obj; elt != 0;
    elt = ((TREE_CODE (elt) == COMPOUND_EXPR
     || TREE_CODE (elt) == COND_EXPR)
    ? TREE_OPERAND (elt, 1)
    : (REFERENCE_CLASS_P (elt)
       || UNARY_CLASS_P (elt)
       || BINARY_CLASS_P (elt)
       || EXPRESSION_CLASS_P (elt))
    ? TREE_OPERAND (elt, 0) : 0))
 if (POINTER_TYPE_P (TREE_TYPE (elt))
     && (TYPE_MAIN_VARIANT (TREE_TYPE (TREE_TYPE (elt)))
  == need_type))
   return fold_build1 (INDIRECT_REF, need_type, elt);



      return exp;
    }



  else if (code == TREE_LIST)
    {
      op0 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_CHAIN (exp), obj);
      op1 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_VALUE (exp), obj);
      if (op0 == TREE_CHAIN (exp) && op1 == TREE_VALUE (exp))
 return exp;

      return tree_cons (TREE_PURPOSE (exp), op1, op0);
    }
  else
    switch (TREE_CODE_CLASS (code))
      {
      case 134:
      case 133:
 return exp;

      case 132:
      case 128:
      case 136:
      case 135:
      case 131:
      case 130:
      case 129:
 switch (TREE_CODE_LENGTH (code))
   {
   case 0:
     return exp;

   case 1:
     op0 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 0), obj);
     if (op0 == TREE_OPERAND (exp, 0))
       return exp;
     else
       return fold_build1 (code, TREE_TYPE (exp), op0);

   case 2:
     op0 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 0), obj);
     op1 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 1), obj);

     if (op0 == TREE_OPERAND (exp, 0) && op1 == TREE_OPERAND (exp, 1))
       return exp;
     else
       return fold_build2 (code, TREE_TYPE (exp), op0, op1);

   case 3:
     op0 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 0), obj);
     op1 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 1), obj);
     op2 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 2), obj);

     if (op0 == TREE_OPERAND (exp, 0) && op1 == TREE_OPERAND (exp, 1)
  && op2 == TREE_OPERAND (exp, 2))
       return exp;
     else
       return fold_build3 (code, TREE_TYPE (exp), op0, op1, op2);

   case 4:
     op0 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 0), obj);
     op1 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 1), obj);
     op2 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 2), obj);
     op3 = SUBSTITUTE_PLACEHOLDER_IN_EXPR (TREE_OPERAND (exp, 3), obj);

     if (op0 == TREE_OPERAND (exp, 0) && op1 == TREE_OPERAND (exp, 1)
  && op2 == TREE_OPERAND (exp, 2)
  && op3 == TREE_OPERAND (exp, 3))
       return exp;
     else
       return fold (build4 (code, TREE_TYPE (exp), op0, op1, op2, op3));

   default:
     gcc_unreachable ();
   }
 break;

      default:
 gcc_unreachable ();
      }
}
