
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 size_t BUILT_IN_MEMCPY_CHK ;
 size_t BUILT_IN_STPCPY ;
 int BUILT_IN_STPCPY_CHK ;
 size_t BUILT_IN_STRCPY ;
 int BUILT_IN_STRCPY_CHK ;
 int INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 scalar_t__* built_in_decls ;
 scalar_t__ c_strlen (scalar_t__,int) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 int host_integerp (scalar_t__,int) ;
 int integer_all_onesp (scalar_t__) ;
 scalar_t__ operand_equal_p (scalar_t__,scalar_t__,int ) ;
 scalar_t__ size_binop (int ,scalar_t__,int ) ;
 int ssize_int (int) ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ,int ) ;

tree
fold_builtin_stxcpy_chk (tree fndecl, tree arglist, tree maxlen, bool ignore,
    enum built_in_function fcode)
{
  tree dest, src, size, len, fn;

  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
    VOID_TYPE))
    return 0;

  dest = TREE_VALUE (arglist);
  src = TREE_VALUE (TREE_CHAIN (arglist));
  size = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));


  if (fcode == BUILT_IN_STRCPY_CHK && operand_equal_p (src, dest, 0))
    return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)), dest);

  if (! host_integerp (size, 1))
    return 0;

  if (! integer_all_onesp (size))
    {
      len = c_strlen (src, 1);
      if (! len || ! host_integerp (len, 1))
 {



   if (maxlen == NULL_TREE || ! host_integerp (maxlen, 1))
     {
       if (fcode == BUILT_IN_STPCPY_CHK)
  {
    if (! ignore)
      return 0;



    fn = built_in_decls[BUILT_IN_STRCPY_CHK];
    if (!fn)
      return 0;

    return build_function_call_expr (fn, arglist);
  }

       if (! len || TREE_SIDE_EFFECTS (len))
  return 0;



       fn = built_in_decls[BUILT_IN_MEMCPY_CHK];
       if (!fn)
  return 0;

       len = size_binop (PLUS_EXPR, len, ssize_int (1));
       arglist = build_tree_list (NULL_TREE, size);
       arglist = tree_cons (NULL_TREE, len, arglist);
       arglist = tree_cons (NULL_TREE, src, arglist);
       arglist = tree_cons (NULL_TREE, dest, arglist);
       return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)),
       build_function_call_expr (fn, arglist));
     }
 }
      else
 maxlen = len;

      if (! tree_int_cst_lt (maxlen, size))
 return 0;
    }

  arglist = build_tree_list (NULL_TREE, src);
  arglist = tree_cons (NULL_TREE, dest, arglist);


  fn = built_in_decls[fcode == BUILT_IN_STPCPY_CHK
        ? BUILT_IN_STPCPY : BUILT_IN_STRCPY];
  if (!fn)
    return 0;

  return build_function_call_expr (fn, arglist);
}
