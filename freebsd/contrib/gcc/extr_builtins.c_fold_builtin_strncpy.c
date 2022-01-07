
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 size_t BUILT_IN_MEMCPY ;
 scalar_t__ INTEGER_CST ;
 int INTEGER_TYPE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 int build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ c_strlen (scalar_t__,int) ;
 scalar_t__ fold_convert (scalar_t__,int ) ;
 scalar_t__* implicit_built_in_decls ;
 scalar_t__ integer_zerop (scalar_t__) ;
 scalar_t__ omit_one_operand (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ size_binop (int ,scalar_t__,int ) ;
 int ssize_int (int) ;
 scalar_t__ tree_int_cst_lt (scalar_t__,scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ,int ) ;

tree
fold_builtin_strncpy (tree fndecl, tree arglist, tree slen)
{
  tree dest, src, len, fn;

  if (!validate_arglist (arglist,
    POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = TREE_VALUE (arglist);
  src = TREE_VALUE (TREE_CHAIN (arglist));
  len = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));


  if (integer_zerop (len))
    return omit_one_operand (TREE_TYPE (TREE_TYPE (fndecl)), dest, src);



  if (len == 0 || TREE_CODE (len) != INTEGER_CST)
    return 0;

  if (!slen)
    slen = c_strlen (src, 1);


  if (slen == 0 || TREE_CODE (slen) != INTEGER_CST)
    return 0;

  slen = size_binop (PLUS_EXPR, slen, ssize_int (1));




  if (tree_int_cst_lt (slen, len))
    return 0;


  fn = implicit_built_in_decls[BUILT_IN_MEMCPY];
  if (!fn)
    return 0;
  return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)),
         build_function_call_expr (fn, arglist));
}
