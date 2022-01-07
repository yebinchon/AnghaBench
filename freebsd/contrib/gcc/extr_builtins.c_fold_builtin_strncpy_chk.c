
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_STRNCPY ;
 int INTEGER_TYPE ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_tree_list (int ,int ) ;
 int * built_in_decls ;
 int host_integerp (int ,int) ;
 int integer_all_onesp (int ) ;
 int tree_cons (int ,int ,int ) ;
 scalar_t__ tree_int_cst_lt (int ,int ) ;
 int validate_arglist (int ,int ,int ,int ,int ,int ) ;

tree
fold_builtin_strncpy_chk (tree arglist, tree maxlen)
{
  tree dest, src, size, len, fn;

  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
    INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = TREE_VALUE (arglist);
  src = TREE_VALUE (TREE_CHAIN (arglist));
  len = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));
  size = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (TREE_CHAIN (arglist))));

  if (! host_integerp (size, 1))
    return 0;

  if (! integer_all_onesp (size))
    {
      if (! host_integerp (len, 1))
 {



   if (maxlen == NULL_TREE || ! host_integerp (maxlen, 1))
     return 0;
 }
      else
 maxlen = len;

      if (tree_int_cst_lt (size, maxlen))
 return 0;
    }

  arglist = build_tree_list (NULL_TREE, len);
  arglist = tree_cons (NULL_TREE, src, arglist);
  arglist = tree_cons (NULL_TREE, dest, arglist);


  fn = built_in_decls[BUILT_IN_STRNCPY];
  if (!fn)
    return 0;

  return build_function_call_expr (fn, arglist);
}
