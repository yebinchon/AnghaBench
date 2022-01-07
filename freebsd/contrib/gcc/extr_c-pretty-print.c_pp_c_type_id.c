
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 int pp_abstract_declarator (int *,int ) ;
 int pp_c_specifier_qualifier_list (int *,int ) ;

void
pp_c_type_id (c_pretty_printer *pp, tree t)
{
  pp_c_specifier_qualifier_list (pp, t);
  pp_abstract_declarator (pp, t);
}
