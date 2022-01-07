
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int DECL_EXPR_DECL (int ) ;
 scalar_t__ TYPE_P (int ) ;
 int pp_cxx_abstract_declarator (int *,int ) ;
 int pp_cxx_declarator (int *,int ) ;
 int pp_cxx_type_specifier_seq (int *,int ) ;

__attribute__((used)) static void
pp_cxx_exception_declaration (cxx_pretty_printer *pp, tree t)
{
  t = DECL_EXPR_DECL (t);
  pp_cxx_type_specifier_seq (pp, t);
  if (TYPE_P (t))
    pp_cxx_abstract_declarator (pp, t);
  else
    pp_cxx_declarator (pp, t);
}
