
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int DECL_LANG_SPECIFIC (int ) ;
 int DECL_NAMESPACE_ALIAS (int ) ;
 int DECL_SAVED_TREE (int ) ;
 int DECL_USE_TEMPLATE (int ) ;


 int TREE_CODE (int ) ;


 int pp_cxx_explicit_instantiation (int *,int ) ;
 int pp_cxx_explicit_specialization (int *,int ) ;
 int pp_cxx_function_definition (int *,int ) ;
 int pp_cxx_namespace_alias_definition (int *,int ) ;
 int pp_cxx_original_namespace_definition (int *,int ) ;
 int pp_cxx_simple_declaration (int *,int ) ;
 int pp_cxx_template_declaration (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;

void
pp_cxx_declaration (cxx_pretty_printer *pp, tree t)
{
  if (!DECL_LANG_SPECIFIC (t))
    pp_cxx_simple_declaration (pp, t);
  else if (DECL_USE_TEMPLATE (t))
    switch (DECL_USE_TEMPLATE (t))
      {
      case 1:
 pp_cxx_template_declaration (pp, t);
 break;

      case 2:
 pp_cxx_explicit_specialization (pp, t);
 break;

      case 3:
 pp_cxx_explicit_instantiation (pp, t);
 break;

      default:
 break;
      }
  else switch (TREE_CODE (t))
    {
    case 128:
    case 129:
      pp_cxx_simple_declaration (pp, t);
      break;

    case 131:
      if (DECL_SAVED_TREE (t))
 pp_cxx_function_definition (pp, t);
      else
 pp_cxx_simple_declaration (pp, t);
      break;

    case 130:
      if (DECL_NAMESPACE_ALIAS (t))
 pp_cxx_namespace_alias_definition (pp, t);
      else
 pp_cxx_original_namespace_definition (pp, t);
      break;

    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
