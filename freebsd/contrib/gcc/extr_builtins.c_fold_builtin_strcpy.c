
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_MEMCPY ;
 int NULL_TREE ;
 int PLUS_EXPR ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_SIDE_EFFECTS (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_tree_list (int ,int ) ;
 int c_strlen (int ,int) ;
 int fold_convert (int ,int ) ;
 int * implicit_built_in_decls ;
 scalar_t__ operand_equal_p (int ,int ,int ) ;
 scalar_t__ optimize_size ;
 int size_binop (int ,int ,int ) ;
 int ssize_int (int) ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ) ;

tree
fold_builtin_strcpy (tree fndecl, tree arglist, tree len)
{
  tree dest, src, fn;

  if (!validate_arglist (arglist,
    POINTER_TYPE, POINTER_TYPE, VOID_TYPE))
    return 0;

  dest = TREE_VALUE (arglist);
  src = TREE_VALUE (TREE_CHAIN (arglist));


  if (operand_equal_p (src, dest, 0))
    return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)), dest);

  if (optimize_size)
    return 0;

  fn = implicit_built_in_decls[BUILT_IN_MEMCPY];
  if (!fn)
    return 0;

  if (!len)
    {
      len = c_strlen (src, 1);
      if (! len || TREE_SIDE_EFFECTS (len))
 return 0;
    }

  len = size_binop (PLUS_EXPR, len, ssize_int (1));
  arglist = build_tree_list (NULL_TREE, len);
  arglist = tree_cons (NULL_TREE, src, arglist);
  arglist = tree_cons (NULL_TREE, dest, arglist);
  return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)),
         build_function_call_expr (fn, arglist));
}
