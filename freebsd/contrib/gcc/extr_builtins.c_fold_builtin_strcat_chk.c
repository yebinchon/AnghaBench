
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 size_t BUILT_IN_STRCAT ;
 int INTEGER_TYPE ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 int TREE_CHAIN (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int VOID_TYPE ;
 int build_function_call_expr (int ,int ) ;
 int build_tree_list (int ,int ) ;
 int * built_in_decls ;
 char* c_getstr (int ) ;
 int host_integerp (int ,int) ;
 int integer_all_onesp (int ) ;
 int omit_one_operand (int ,int ,int ) ;
 int tree_cons (int ,int ,int ) ;
 int validate_arglist (int ,int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strcat_chk (tree fndecl, tree arglist)
{
  tree dest, src, size, fn;
  const char *p;

  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
    VOID_TYPE))
    return 0;

  dest = TREE_VALUE (arglist);
  src = TREE_VALUE (TREE_CHAIN (arglist));
  size = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));

  p = c_getstr (src);

  if (p && *p == '\0')
    return omit_one_operand (TREE_TYPE (TREE_TYPE (fndecl)), dest, src);

  if (! host_integerp (size, 1) || ! integer_all_onesp (size))
    return 0;

  arglist = build_tree_list (NULL_TREE, src);
  arglist = tree_cons (NULL_TREE, dest, arglist);


  fn = built_in_decls[BUILT_IN_STRCAT];
  if (!fn)
    return 0;

  return build_function_call_expr (fn, arglist);
}
