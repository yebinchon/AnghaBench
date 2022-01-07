
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ BUILT_IN_MD ;
 scalar_t__ CALL_EXPR ;
 scalar_t__ COMPLEX_FLOAT_TYPE_P (scalar_t__) ;
 int DECL_BUILT_IN (scalar_t__) ;
 scalar_t__ DECL_BUILT_IN_CLASS (scalar_t__) ;
 int DECL_FUNCTION_CODE (scalar_t__) ;
 int END_BUILTINS ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ INTEGRAL_TYPE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ SCALAR_FLOAT_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_ARG_TYPES (scalar_t__) ;
 scalar_t__ VOID_TYPE_P (scalar_t__) ;
 scalar_t__ get_callee_fndecl (scalar_t__) ;

enum built_in_function
builtin_mathfn_code (tree t)
{
  tree fndecl, arglist, parmlist;
  tree argtype, parmtype;

  if (TREE_CODE (t) != CALL_EXPR
      || TREE_CODE (TREE_OPERAND (t, 0)) != ADDR_EXPR)
    return END_BUILTINS;

  fndecl = get_callee_fndecl (t);
  if (fndecl == NULL_TREE
      || TREE_CODE (fndecl) != FUNCTION_DECL
      || ! DECL_BUILT_IN (fndecl)
      || DECL_BUILT_IN_CLASS (fndecl) == BUILT_IN_MD)
    return END_BUILTINS;

  arglist = TREE_OPERAND (t, 1);
  parmlist = TYPE_ARG_TYPES (TREE_TYPE (fndecl));
  for (; parmlist; parmlist = TREE_CHAIN (parmlist))
    {


      parmtype = TREE_VALUE (parmlist);
      if (VOID_TYPE_P (parmtype))
 {
   if (arglist)
     return END_BUILTINS;
   return DECL_FUNCTION_CODE (fndecl);
 }

      if (! arglist)
 return END_BUILTINS;

      argtype = TREE_TYPE (TREE_VALUE (arglist));

      if (SCALAR_FLOAT_TYPE_P (parmtype))
 {
   if (! SCALAR_FLOAT_TYPE_P (argtype))
     return END_BUILTINS;
 }
      else if (COMPLEX_FLOAT_TYPE_P (parmtype))
 {
   if (! COMPLEX_FLOAT_TYPE_P (argtype))
     return END_BUILTINS;
 }
      else if (POINTER_TYPE_P (parmtype))
 {
   if (! POINTER_TYPE_P (argtype))
     return END_BUILTINS;
 }
      else if (INTEGRAL_TYPE_P (parmtype))
 {
   if (! INTEGRAL_TYPE_P (argtype))
     return END_BUILTINS;
 }
      else
 return END_BUILTINS;

      arglist = TREE_CHAIN (arglist);
    }


  return DECL_FUNCTION_CODE (fndecl);
}
