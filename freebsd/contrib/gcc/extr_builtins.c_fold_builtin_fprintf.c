
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 int BUILT_IN_FPRINTF_CHK ;
 int BUILT_IN_FPRINTF_UNLOCKED ;
 size_t BUILT_IN_FPUTC ;
 size_t BUILT_IN_FPUTC_UNLOCKED ;
 size_t BUILT_IN_FPUTS ;
 size_t BUILT_IN_FPUTS_UNLOCKED ;
 int BUILT_IN_VFPRINTF ;
 int BUILT_IN_VFPRINTF_CHK ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;
 int POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,int ) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 scalar_t__* built_in_decls ;
 char* c_getstr (scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__* implicit_built_in_decls ;
 int init_target_chars () ;
 int * strchr (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int target_percent ;
 int target_percent_c ;
 int target_percent_s ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
fold_builtin_fprintf (tree fndecl, tree arglist, bool ignore,
        enum built_in_function fcode)
{
  tree fp, fmt, fn = NULL_TREE, fn_fputc, fn_fputs, arg, call;
  const char *fmt_str = ((void*)0);


  if (! ignore)
    return 0;


  if (! arglist)
    return 0;
  fp = TREE_VALUE (arglist);
  if (! POINTER_TYPE_P (TREE_TYPE (fp)))
    return 0;
  arglist = TREE_CHAIN (arglist);

  if (fcode == BUILT_IN_FPRINTF_CHK || fcode == BUILT_IN_VFPRINTF_CHK)
    {
      tree flag;

      if (! arglist)
 return 0;
      flag = TREE_VALUE (arglist);
      if (TREE_CODE (TREE_TYPE (flag)) != INTEGER_TYPE
   || TREE_SIDE_EFFECTS (flag))
 return 0;
      arglist = TREE_CHAIN (arglist);
    }

  if (! arglist)
    return 0;
  fmt = TREE_VALUE (arglist);
  if (! POINTER_TYPE_P (TREE_TYPE (fmt)))
    return 0;
  arglist = TREE_CHAIN (arglist);


  fmt_str = c_getstr (fmt);
  if (fmt_str == ((void*)0))
    return NULL_TREE;

  if (fcode == BUILT_IN_FPRINTF_UNLOCKED)
    {


      fn_fputc = built_in_decls[BUILT_IN_FPUTC_UNLOCKED];
      fn_fputs = built_in_decls[BUILT_IN_FPUTS_UNLOCKED];
    }
  else
    {
      fn_fputc = implicit_built_in_decls[BUILT_IN_FPUTC];
      fn_fputs = implicit_built_in_decls[BUILT_IN_FPUTS];
    }

  if (!init_target_chars())
    return 0;


  if (strchr (fmt_str, target_percent) == ((void*)0))
    {
      if (fcode != BUILT_IN_VFPRINTF && fcode != BUILT_IN_VFPRINTF_CHK
   && arglist)
 return 0;


      if (fmt_str[0] == '\0')
 {


   if (TREE_SIDE_EFFECTS (fp))
     return 0;

   return build_int_cst (TREE_TYPE (TREE_TYPE (fndecl)), 0);
 }




      arglist = build_tree_list (NULL_TREE, fp);
      arglist = tree_cons (NULL_TREE, fmt, arglist);
      fn = fn_fputs;
    }


  else if (fcode == BUILT_IN_VFPRINTF || fcode == BUILT_IN_VFPRINTF_CHK)
    return 0;


  else if (strcmp (fmt_str, target_percent_s) == 0)
    {
      if (! arglist
   || ! POINTER_TYPE_P (TREE_TYPE (TREE_VALUE (arglist)))
   || TREE_CHAIN (arglist))
 return 0;
      arg = TREE_VALUE (arglist);
      arglist = build_tree_list (NULL_TREE, fp);
      arglist = tree_cons (NULL_TREE, arg, arglist);
      fn = fn_fputs;
    }


  else if (strcmp (fmt_str, target_percent_c) == 0)
    {
      if (! arglist
   || TREE_CODE (TREE_TYPE (TREE_VALUE (arglist))) != INTEGER_TYPE
   || TREE_CHAIN (arglist))
 return 0;
      arg = TREE_VALUE (arglist);
      arglist = build_tree_list (NULL_TREE, fp);
      arglist = tree_cons (NULL_TREE, arg, arglist);
      fn = fn_fputc;
    }

  if (!fn)
    return 0;

  call = build_function_call_expr (fn, arglist);
  return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)), call);
}
