
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 size_t BUILT_IN_SPRINTF ;
 size_t BUILT_IN_STRCPY ;
 int COMPOUND_EXPR ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ NULL_TREE ;
 int POINTER_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int VOID_TYPE ;
 scalar_t__ build2 (int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 char* c_getstr (scalar_t__) ;
 scalar_t__ c_strlen (scalar_t__,int) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__* implicit_built_in_decls ;
 int init_target_chars () ;
 int * strchr (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;
 int target_percent ;
 int target_percent_s ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 int validate_arglist (scalar_t__,int ,int ,int ,...) ;

__attribute__((used)) static tree
fold_builtin_sprintf (tree arglist, int ignored)
{
  tree call, retval, dest, fmt;
  const char *fmt_str = ((void*)0);




  if (!validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, VOID_TYPE)
      && !validate_arglist (arglist, POINTER_TYPE, POINTER_TYPE, POINTER_TYPE,
       VOID_TYPE))
    return NULL_TREE;


  dest = TREE_VALUE (arglist);
  fmt = TREE_VALUE (TREE_CHAIN (arglist));
  arglist = TREE_CHAIN (TREE_CHAIN (arglist));


  fmt_str = c_getstr (fmt);
  if (fmt_str == ((void*)0))
    return NULL_TREE;

  call = NULL_TREE;
  retval = NULL_TREE;

  if (!init_target_chars())
    return 0;


  if (strchr (fmt_str, target_percent) == ((void*)0))
    {
      tree fn = implicit_built_in_decls[BUILT_IN_STRCPY];

      if (!fn)
 return NULL_TREE;


      if (arglist)
 return NULL_TREE;



      arglist = build_tree_list (NULL_TREE, fmt);
      arglist = tree_cons (NULL_TREE, dest, arglist);
      call = build_function_call_expr (fn, arglist);
      if (!ignored)
 retval = build_int_cst (NULL_TREE, strlen (fmt_str));
    }


  else if (fmt_str && strcmp (fmt_str, target_percent_s) == 0)
    {
      tree fn, orig;
      fn = implicit_built_in_decls[BUILT_IN_STRCPY];

      if (!fn)
 return NULL_TREE;


      if (!arglist)
 return NULL_TREE;


      orig = TREE_VALUE (arglist);
      arglist = build_tree_list (NULL_TREE, orig);
      arglist = tree_cons (NULL_TREE, dest, arglist);
      if (!ignored)
 {
   retval = c_strlen (orig, 1);
   if (!retval || TREE_CODE (retval) != INTEGER_CST)
     return NULL_TREE;
 }
      call = build_function_call_expr (fn, arglist);
    }

  if (call && retval)
    {
      retval = fold_convert
 (TREE_TYPE (TREE_TYPE (implicit_built_in_decls[BUILT_IN_SPRINTF])),
  retval);
      return build2 (COMPOUND_EXPR, TREE_TYPE (retval), call, retval);
    }
  else
    return call;
}
