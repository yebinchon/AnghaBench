
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 size_t BUILT_IN_STRCAT_CHK ;
 size_t BUILT_IN_STRNCAT ;
 int INTEGER_TYPE ;
 int NULL_TREE ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_tree_list (int ,scalar_t__) ;
 scalar_t__* built_in_decls ;
 char* c_getstr (scalar_t__) ;
 scalar_t__ c_strlen (scalar_t__,int) ;
 scalar_t__ host_integerp (scalar_t__,int) ;
 int integer_all_onesp (scalar_t__) ;
 scalar_t__ integer_zerop (scalar_t__) ;
 scalar_t__ omit_one_operand (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ tree_cons (int ,scalar_t__,scalar_t__) ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ,int ,int ) ;

__attribute__((used)) static tree
fold_builtin_strncat_chk (tree fndecl, tree arglist)
{
  tree dest, src, size, len, fn;
  const char *p;

  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, INTEGER_TYPE,
    INTEGER_TYPE, VOID_TYPE))
    return 0;

  dest = TREE_VALUE (arglist);
  src = TREE_VALUE (TREE_CHAIN (arglist));
  len = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (arglist)));
  size = TREE_VALUE (TREE_CHAIN (TREE_CHAIN (TREE_CHAIN (arglist))));

  p = c_getstr (src);

  if (p && *p == '\0')
    return omit_one_operand (TREE_TYPE (TREE_TYPE (fndecl)), dest, len);
  else if (integer_zerop (len))
    return omit_one_operand (TREE_TYPE (TREE_TYPE (fndecl)), dest, src);

  if (! host_integerp (size, 1))
    return 0;

  if (! integer_all_onesp (size))
    {
      tree src_len = c_strlen (src, 1);
      if (src_len
   && host_integerp (src_len, 1)
   && host_integerp (len, 1)
   && ! tree_int_cst_lt (len, src_len))
 {

   fn = built_in_decls[BUILT_IN_STRCAT_CHK];
   if (!fn)
     return 0;

   arglist = build_tree_list (NULL_TREE, size);
   arglist = tree_cons (NULL_TREE, src, arglist);
   arglist = tree_cons (NULL_TREE, dest, arglist);
   return build_function_call_expr (fn, arglist);
 }
      return 0;
    }

  arglist = build_tree_list (NULL_TREE, len);
  arglist = tree_cons (NULL_TREE, src, arglist);
  arglist = tree_cons (NULL_TREE, dest, arglist);


  fn = built_in_decls[BUILT_IN_STRNCAT];
  if (!fn)
    return 0;

  return build_function_call_expr (fn, arglist);
}
