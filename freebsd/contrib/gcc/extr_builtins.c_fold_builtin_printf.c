
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 int BUILT_IN_PRINTF_CHK ;
 int BUILT_IN_PRINTF_UNLOCKED ;
 size_t BUILT_IN_PUTCHAR ;
 size_t BUILT_IN_PUTCHAR_UNLOCKED ;
 size_t BUILT_IN_PUTS ;
 size_t BUILT_IN_PUTS_UNLOCKED ;
 int BUILT_IN_VPRINTF ;
 int BUILT_IN_VPRINTF_CHK ;
 scalar_t__ INTEGER_TYPE ;
 scalar_t__ NULL_TREE ;
 int POINTER_TYPE_P (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_SIDE_EFFECTS (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 char* alloca (size_t) ;
 scalar_t__ build_function_call_expr (scalar_t__,scalar_t__) ;
 scalar_t__ build_int_cst (scalar_t__,char const) ;
 scalar_t__ build_string_literal (size_t,char*) ;
 scalar_t__ build_tree_list (scalar_t__,scalar_t__) ;
 scalar_t__* built_in_decls ;
 char* c_getstr (scalar_t__) ;
 scalar_t__ fold_convert (scalar_t__,scalar_t__) ;
 scalar_t__* implicit_built_in_decls ;
 int init_target_chars () ;
 int memcpy (char*,char const*,size_t) ;
 int * strchr (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 size_t strlen (char const*) ;
 unsigned char target_newline ;
 int target_percent ;
 int target_percent_c ;
 int target_percent_s ;
 int target_percent_s_newline ;

__attribute__((used)) static tree
fold_builtin_printf (tree fndecl, tree arglist, bool ignore,
       enum built_in_function fcode)
{
  tree fmt, fn = NULL_TREE, fn_putchar, fn_puts, arg, call;
  const char *fmt_str = ((void*)0);


  if (! ignore)
    return 0;


  if (fcode == BUILT_IN_PRINTF_CHK || fcode == BUILT_IN_VPRINTF_CHK)
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

  if (fcode == BUILT_IN_PRINTF_UNLOCKED)
    {


      fn_putchar = built_in_decls[BUILT_IN_PUTCHAR_UNLOCKED];
      fn_puts = built_in_decls[BUILT_IN_PUTS_UNLOCKED];
    }
  else
    {
      fn_putchar = implicit_built_in_decls[BUILT_IN_PUTCHAR];
      fn_puts = implicit_built_in_decls[BUILT_IN_PUTS];
    }

  if (!init_target_chars())
    return 0;

  if (strcmp (fmt_str, target_percent_s) == 0 || strchr (fmt_str, target_percent) == ((void*)0))
    {
      const char *str;

      if (strcmp (fmt_str, target_percent_s) == 0)
 {
   if (fcode == BUILT_IN_VPRINTF || fcode == BUILT_IN_VPRINTF_CHK)
     return 0;

   if (! arglist
       || ! POINTER_TYPE_P (TREE_TYPE (TREE_VALUE (arglist)))
       || TREE_CHAIN (arglist))
     return 0;

   str = c_getstr (TREE_VALUE (arglist));
   if (str == ((void*)0))
     return 0;
 }
      else
 {

   if (fcode != BUILT_IN_VPRINTF && fcode != BUILT_IN_VPRINTF_CHK
       && arglist)
     return 0;
   str = fmt_str;
 }


      if (str[0] == '\0')
 return build_int_cst (TREE_TYPE (TREE_TYPE (fndecl)), 0);


      if (str[1] == '\0')
 {



   arg = build_int_cst (NULL_TREE, str[0]);
   arglist = build_tree_list (NULL_TREE, arg);
   fn = fn_putchar;
 }
      else
 {

   size_t len = strlen (str);
   if ((unsigned char)str[len - 1] == target_newline)
     {


       char *newstr = alloca (len);
       memcpy (newstr, str, len - 1);
       newstr[len - 1] = 0;

       arg = build_string_literal (len, newstr);
       arglist = build_tree_list (NULL_TREE, arg);
       fn = fn_puts;
     }
   else


     return 0;
 }
    }


  else if (fcode == BUILT_IN_VPRINTF || fcode == BUILT_IN_VPRINTF_CHK)
    return 0;


  else if (strcmp (fmt_str, target_percent_s_newline) == 0)
    {
      if (! arglist
   || ! POINTER_TYPE_P (TREE_TYPE (TREE_VALUE (arglist)))
   || TREE_CHAIN (arglist))
 return 0;
      fn = fn_puts;
    }


  else if (strcmp (fmt_str, target_percent_c) == 0)
    {
      if (! arglist
   || TREE_CODE (TREE_TYPE (TREE_VALUE (arglist))) != INTEGER_TYPE
   || TREE_CHAIN (arglist))
 return 0;
      fn = fn_putchar;
    }

  if (!fn)
    return 0;

  call = build_function_call_expr (fn, arglist);
  return fold_convert (TREE_TYPE (TREE_TYPE (fndecl)), call);
}
