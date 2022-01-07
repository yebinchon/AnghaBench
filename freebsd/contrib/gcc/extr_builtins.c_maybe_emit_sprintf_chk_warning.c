
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int location_t ;
typedef enum built_in_function { ____Placeholder_built_in_function } built_in_function ;


 int BUILT_IN_SPRINTF_CHK ;
 int EXPR_LOCATION (scalar_t__) ;
 int POINTER_TYPE_P (int ) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ build_int_cstu (int ,int ) ;
 char* c_getstr (scalar_t__) ;
 scalar_t__ c_strlen (scalar_t__,int) ;
 int get_callee_fndecl (scalar_t__) ;
 int host_integerp (scalar_t__,int) ;
 int init_target_chars () ;
 scalar_t__ integer_all_onesp (scalar_t__) ;
 int size_type_node ;
 scalar_t__ strchr (char const*,int ) ;
 scalar_t__ strcmp (char const*,int ) ;
 int strlen (char const*) ;
 int target_percent ;
 int target_percent_s ;
 int tree_int_cst_lt (scalar_t__,scalar_t__) ;
 int warning (int ,char*,int *,int ) ;

__attribute__((used)) static void
maybe_emit_sprintf_chk_warning (tree exp, enum built_in_function fcode)
{
  tree arglist = TREE_OPERAND (exp, 1);
  tree dest, size, len, fmt, flag;
  const char *fmt_str;


  if (! arglist)
    return;
  dest = TREE_VALUE (arglist);
  arglist = TREE_CHAIN (arglist);
  if (! arglist)
    return;
  flag = TREE_VALUE (arglist);
  arglist = TREE_CHAIN (arglist);
  if (! arglist)
    return;
  size = TREE_VALUE (arglist);
  arglist = TREE_CHAIN (arglist);
  if (! arglist)
    return;
  fmt = TREE_VALUE (arglist);
  arglist = TREE_CHAIN (arglist);

  if (! host_integerp (size, 1) || integer_all_onesp (size))
    return;


  fmt_str = c_getstr (fmt);
  if (fmt_str == ((void*)0))
    return;

  if (!init_target_chars())
    return;


  if (strchr (fmt_str, target_percent) == 0)
    len = build_int_cstu (size_type_node, strlen (fmt_str));


  else if (fcode == BUILT_IN_SPRINTF_CHK && strcmp (fmt_str, target_percent_s) == 0)
    {
      tree arg;

      if (! arglist)
 return;
      arg = TREE_VALUE (arglist);
      if (! POINTER_TYPE_P (TREE_TYPE (arg)))
 return;

      len = c_strlen (arg, 1);
      if (!len || ! host_integerp (len, 1))
 return;
    }
  else
    return;

  if (! tree_int_cst_lt (len, size))
    {
      location_t locus = EXPR_LOCATION (exp);
      warning (0, "%Hcall to %D will always overflow destination buffer",
        &locus, get_callee_fndecl (exp));
    }
}
