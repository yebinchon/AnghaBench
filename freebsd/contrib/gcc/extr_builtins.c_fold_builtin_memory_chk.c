
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 size_t BUILT_IN_MEMCPY ;

 size_t BUILT_IN_MEMMOVE ;

 size_t BUILT_IN_MEMPCPY ;

 size_t BUILT_IN_MEMSET ;

 int INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 scalar_t__* built_in_decls ;
 scalar_t__ fold_build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int host_integerp (scalar_t__,int) ;
 int integer_all_onesp (scalar_t__) ;
 scalar_t__ omit_one_operand (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ operand_equal_p (scalar_t__,scalar_t__,int ) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ tree_int_cst_lt (scalar_t__,scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ,int ,int ) ;

tree
fold_builtin_memory_chk (tree fndecl, tree arglist, tree maxlen, bool ignore,
    enum built_in_function fcode)
{
  tree dest, src, len, size, fn;

  if (!validate_arglist (arglist,
    POINTER_TYPE,
    fcode == 128
    ? INTEGER_TYPE : POINTER_TYPE,
    INTEGER_TYPE, INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = TREE_VALUE (arglist);

  src = TREE_VALUE (TREE_CHAIN (arglist));
  len = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));
  size = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (TREE_CHAIN (arglist))));



  if (fcode != 128 && operand_equal_p (src, dest, 0))
    {
      if (fcode != 129)
 return omit_one_operand (TREE_TYPE (TREE_TYPE (fndecl)), dest, len);
      else
 {
   tree temp = fold_convert (TREE_TYPE (dest), len);
   temp = fold_build2 (PLUS_EXPR, TREE_TYPE (dest), dest, temp);
   return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)), temp);
 }
    }

  if (! host_integerp (size, 1))
    return 0;

  if (! integer_all_onesp (size))
    {
      if (! host_integerp (len, 1))
 {



   if (maxlen == NULL_TREE || ! host_integerp (maxlen, 1))
     {
       if (fcode == 129 && ignore)
  {


    fn = built_in_decls[131];
    if (!fn)
      return 0;

    return build_function_call_expr (fn, arglist);
  }
       return 0;
     }
 }
      else
 maxlen = len;

      if (tree_int_cst_lt (size, maxlen))
 return 0;
    }

  arglist = build_tree_list (NULL_TREE, len);
  arglist = tree_cons (NULL_TREE, src, arglist);
  arglist = tree_cons (NULL_TREE, dest, arglist);

  fn = NULL_TREE;


  switch (fcode)
    {
    case 131:
      fn = built_in_decls[BUILT_IN_MEMCPY];
      break;
    case 129:
      fn = built_in_decls[BUILT_IN_MEMPCPY];
      break;
    case 130:
      fn = built_in_decls[BUILT_IN_MEMMOVE];
      break;
    case 128:
      fn = built_in_decls[BUILT_IN_MEMSET];
      break;
    default:
      break;
    }

  if (!fn)
    return 0;

  return build_function_call_expr (fn, arglist);
}
