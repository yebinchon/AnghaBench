
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ TYPE_P (int ) ;
 int pp_cxx_abstract_declarator (int *,int ) ;
 int pp_cxx_decl_specifier_seq (int *,int ) ;
 int pp_cxx_declarator (int *,int ) ;

__attribute__((used)) static inline void
pp_cxx_parameter_declaration (cxx_pretty_printer *pp, tree t)
{
  pp_cxx_decl_specifier_seq (pp, t);
  if (TYPE_P (t))
    pp_cxx_abstract_declarator (pp, t);
  else
    pp_cxx_declarator (pp, t);
}
