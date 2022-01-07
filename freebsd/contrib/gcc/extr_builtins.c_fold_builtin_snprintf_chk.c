
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 size_t BUILT_IN_SNPRINTF ;
 size_t BUILT_IN_VSNPRINTF ;
 int BUILT_IN_VSNPRINTF_CHK ;
 scalar_t__ INTEGER_TYPE ;
 int NULL_TREE ;
 int POINTER_TYPE_P (int ) ;
 int TREE_CHAIN (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;
 int build_function_call_expr (int ,int ) ;
 int * built_in_decls ;
 char* c_getstr (int ) ;
 int host_integerp (int ,int) ;
 int init_target_chars () ;
 int integer_all_onesp (int ) ;
 int integer_zerop (int ) ;
 int * strchr (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int target_percent ;
 int target_percent_s ;
 int tree_cons (int ,int ,int ) ;
 scalar_t__ tree_int_cst_lt (int ,int ) ;

tree
fold_builtin_snprintf_chk (tree arglist, tree maxlen,
      enum built_in_function fcode)
{
  tree dest, size, len, fn, fmt, flag;
  const char *fmt_str;


  if (! arglist)
    return 0;
  dest = TREE_VALUE (arglist);
  if (! POINTER_TYPE_P (TREE_TYPE (dest)))
    return 0;
  arglist = TREE_CHAIN (arglist);
  if (! arglist)
    return 0;
  len = TREE_VALUE (arglist);
  if (TREE_CODE (TREE_TYPE (len)) != INTEGER_TYPE)
    return 0;
  arglist = TREE_CHAIN (arglist);
  if (! arglist)
    return 0;
  flag = TREE_VALUE (arglist);
  if (TREE_CODE (TREE_TYPE (len)) != INTEGER_TYPE)
    return 0;
  arglist = TREE_CHAIN (arglist);
  if (! arglist)
    return 0;
  size = TREE_VALUE (arglist);
  if (TREE_CODE (TREE_TYPE (size)) != INTEGER_TYPE)
    return 0;
  arglist = TREE_CHAIN (arglist);
  if (! arglist)
    return 0;
  fmt = TREE_VALUE (arglist);
  if (! POINTER_TYPE_P (TREE_TYPE (fmt)))
    return 0;
  arglist = TREE_CHAIN (arglist);

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

  if (!init_target_chars())
    return 0;



  if (! integer_zerop (flag))
    {
      fmt_str = c_getstr (fmt);
      if (fmt_str == ((void*)0))
 return 0;
      if (strchr (fmt_str, target_percent) != ((void*)0) && strcmp (fmt_str, target_percent_s))
 return 0;
    }

  arglist = tree_cons (NULL_TREE, fmt, arglist);
  arglist = tree_cons (NULL_TREE, len, arglist);
  arglist = tree_cons (NULL_TREE, dest, arglist);



  fn = built_in_decls[fcode == BUILT_IN_VSNPRINTF_CHK
        ? BUILT_IN_VSNPRINTF : BUILT_IN_SNPRINTF];
  if (!fn)
    return 0;

  return build_function_call_expr (fn, arglist);
}
