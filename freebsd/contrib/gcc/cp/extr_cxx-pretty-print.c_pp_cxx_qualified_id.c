
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
struct TYPE_7__ {int enclosing_scope; } ;
typedef TYPE_1__ cxx_pretty_printer ;


 int DECL_CONSTRUCTOR_P (int ) ;
 int DECL_CONTEXT (int ) ;
 int DECL_FUNCTION_MEMBER_P (int ) ;



 int OVL_CURRENT (int ) ;

 int PTRMEM_CST_CLASS (int ) ;
 int PTRMEM_CST_MEMBER (int ) ;

 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_TYPE (int ) ;
 int TYPE_CONTEXT (int ) ;
 int TYPE_P (int ) ;
 int pp_cxx_nested_name_specifier (TYPE_1__*,int ) ;
 int pp_cxx_parameter_declaration_clause (TYPE_1__*,int ) ;
 int pp_cxx_template_keyword_if_needed (TYPE_1__*,int ,int ) ;
 int pp_cxx_unqualified_id (TYPE_1__*,int ) ;

__attribute__((used)) static void
pp_cxx_qualified_id (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {

    case 129:
      pp_cxx_nested_name_specifier (pp, PTRMEM_CST_CLASS (t));
      pp_cxx_unqualified_id (pp, PTRMEM_CST_MEMBER (t));
      break;
    case 130:
      t = OVL_CURRENT (t);
    case 132:
      if (DECL_FUNCTION_MEMBER_P (t))
 pp_cxx_nested_name_specifier (pp, DECL_CONTEXT (t));
      pp_cxx_unqualified_id
 (pp, DECL_CONSTRUCTOR_P (t) ? DECL_CONTEXT (t) : t);
      pp_cxx_parameter_declaration_clause (pp, TREE_TYPE (t));
      break;

    case 131:
    case 128:
      pp_cxx_nested_name_specifier (pp, TREE_OPERAND (t, 0));
      pp_cxx_unqualified_id (pp, TREE_OPERAND (t, 1));
      break;

    default:
      {
 tree scope = TYPE_P (t) ? TYPE_CONTEXT (t) : DECL_CONTEXT (t);
 if (scope != pp->enclosing_scope)
   {
     pp_cxx_nested_name_specifier (pp, scope);
     pp_cxx_template_keyword_if_needed (pp, scope, t);
   }
 pp_cxx_unqualified_id (pp, t);
      }
      break;
    }
}
