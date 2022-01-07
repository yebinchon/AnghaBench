
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 scalar_t__ DECL_CONTEXT (int ) ;
 int DECL_NAMESPACE_ALIAS (int ) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_nested_name_specifier (int *,scalar_t__) ;
 int pp_cxx_qualified_id (int *,int ) ;
 int pp_cxx_semicolon (int *) ;
 int pp_cxx_unqualified_id (int *,int ) ;
 int pp_cxx_whitespace (int *) ;
 int pp_equal (int *) ;

__attribute__((used)) static void
pp_cxx_namespace_alias_definition (cxx_pretty_printer *pp, tree t)
{
  pp_cxx_identifier (pp, "namespace");
  if (DECL_CONTEXT (t))
    pp_cxx_nested_name_specifier (pp, DECL_CONTEXT (t));
  pp_cxx_unqualified_id (pp, t);
  pp_cxx_whitespace (pp);
  pp_equal (pp);
  pp_cxx_whitespace (pp);
  if (DECL_CONTEXT (DECL_NAMESPACE_ALIAS (t)))
    pp_cxx_nested_name_specifier (pp,
      DECL_CONTEXT (DECL_NAMESPACE_ALIAS (t)));
  pp_cxx_qualified_id (pp, DECL_NAMESPACE_ALIAS (t));
  pp_cxx_semicolon (pp);
}
