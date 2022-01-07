
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 size_t BUILT_IN_SPRINTF ;
 int BUILT_IN_SPRINTF_CHK ;
 size_t BUILT_IN_VSPRINTF ;
 int BUILT_IN_VSPRINTF_CHK ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cstu (int ,int ) ;
 scalar_t__* built_in_decls ;
 char* c_getstr (scalar_t__) ;
 scalar_t__ c_strlen (scalar_t__,int) ;
 int host_integerp (scalar_t__,int) ;
 int init_target_chars () ;
 int integer_all_onesp (scalar_t__) ;
 int integer_zerop (scalar_t__) ;
 int size_type_node ;
 int * strchr (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;
 int target_percent ;
 int target_percent_s ;
 scalar_t__ tree_cons (scalar_t__,scalar_t__,scalar_t__) ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;

__attribute__((used)) static tree
fold_builtin_sprintf_chk (tree arglist, enum built_in_function fcode)
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
  flag = TREE_VALUE (arglist);
  if (TREE_CODE (TREE_TYPE (flag)) != INTEGER_TYPE)
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

  len = NULL_TREE;

  if (!init_target_chars())
    return 0;


  fmt_str = c_getstr (fmt);
  if (fmt_str != ((void*)0))
    {

      if (strchr (fmt_str, target_percent) == 0)
 {
   if (fcode != BUILT_IN_SPRINTF_CHK || arglist == NULL_TREE)
     len = build_int_cstu (size_type_node, strlen (fmt_str));
 }


      else if (fcode == BUILT_IN_SPRINTF_CHK && strcmp (fmt_str, target_percent_s) == 0)
 {
   tree arg;

   if (arglist && !TREE_CHAIN (arglist))
     {
       arg = TREE_VALUE (arglist);
       if (POINTER_TYPE_P (TREE_TYPE (arg)))
  {
    len = c_strlen (arg, 1);
    if (! len || ! host_integerp (len, 1))
      len = NULL_TREE;
  }
     }
 }
    }

  if (! integer_all_onesp (size))
    {
      if (! len || ! tree_int_cst_lt (len, size))
 return 0;
    }



  if (! integer_zerop (flag))
    {
      if (fmt_str == ((void*)0))
 return 0;
      if (strchr (fmt_str, target_percent) != ((void*)0) && strcmp (fmt_str, target_percent_s))
 return 0;
    }

  arglist = tree_cons (NULL_TREE, fmt, arglist);
  arglist = tree_cons (NULL_TREE, dest, arglist);


  fn = built_in_decls[fcode == BUILT_IN_VSPRINTF_CHK
        ? BUILT_IN_VSPRINTF : BUILT_IN_SPRINTF];
  if (!fn)
    return 0;

  return build_function_call_expr (fn, arglist);
}
