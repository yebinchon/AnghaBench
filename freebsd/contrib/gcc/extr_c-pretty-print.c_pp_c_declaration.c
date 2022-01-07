
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 int pp_c_init_declarator (int *,int ) ;
 int pp_declaration_specifiers (int *,int ) ;

void
pp_c_declaration (c_pretty_printer *pp, tree t)
{
  pp_declaration_specifiers (pp, t);
  pp_c_init_declarator (pp, t);
}
