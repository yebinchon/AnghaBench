
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ DECL_P (int ) ;
 int TREE_TYPE (int ) ;
 int pp_c_specifier_qualifier_list (int *,int ) ;
 int pp_function_specifier (int *,int ) ;
 int pp_storage_class_specifier (int *,int ) ;

void
pp_c_declaration_specifiers (c_pretty_printer *pp, tree t)
{
  pp_storage_class_specifier (pp, t);
  pp_function_specifier (pp, t);
  pp_c_specifier_qualifier_list (pp, DECL_P (t) ? TREE_TYPE (t) : t);
}
