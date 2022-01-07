
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int formals_style ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 int ansi ;
 char* concat (char const*,char const*,char*,...) ;
 scalar_t__ deserves_ellipsis (int ) ;
 char* gen_decl (scalar_t__,int ,int ) ;
 int k_and_r_decls ;
 int k_and_r_names ;

__attribute__((used)) static const char *
gen_formal_list_for_func_def (tree fndecl, formals_style style)
{
  const char *formal_list = "";
  tree formal_decl;

  formal_decl = DECL_ARGUMENTS (fndecl);
  while (formal_decl)
    {
      const char *this_formal;

      if (*formal_list && ((style == ansi) || (style == k_and_r_names)))
 formal_list = concat (formal_list, ", ", ((void*)0));
      this_formal = gen_decl (formal_decl, 0, style);
      if (style == k_and_r_decls)
 formal_list = concat (formal_list, this_formal, "; ", ((void*)0));
      else
 formal_list = concat (formal_list, this_formal, ((void*)0));
      formal_decl = TREE_CHAIN (formal_decl);
    }
  if (style == ansi)
    {
      if (!DECL_ARGUMENTS (fndecl))
 formal_list = concat (formal_list, "void", ((void*)0));
      if (deserves_ellipsis (TREE_TYPE (fndecl)))
 formal_list = concat (formal_list, ", ...", ((void*)0));
    }
  if ((style == ansi) || (style == k_and_r_names))
    formal_list = concat (" (", formal_list, ")", ((void*)0));
  return formal_list;
}
