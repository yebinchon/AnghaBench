
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int cxx_pretty_printer ;
struct TYPE_2__ {int padding; } ;



 int DECL_NAME (int ) ;
 int DECL_NONSTATIC_MEMBER_FUNCTION_P (int ) ;







 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;


 TYPE_1__* pp_base (int *) ;
 int pp_before ;
 int pp_c_base (int *) ;
 int pp_c_direct_declarator (int ,int ) ;
 int pp_cxx_abstract_declarator (int *,int ) ;
 int pp_cxx_cv_qualifier_seq (int *,int ) ;
 int pp_cxx_exception_specification (int *,int ) ;
 int pp_cxx_id_expression (int *,int ) ;
 int pp_cxx_implicit_parameter_type (int ) ;
 int pp_cxx_parameter_declaration_clause (int *,int ) ;
 int pp_cxx_space_for_pointer_operator (int *,int ) ;

__attribute__((used)) static void
pp_cxx_direct_declarator (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 128:
    case 134:
    case 137:
    case 136:
      if (DECL_NAME (t))
 {
   pp_cxx_space_for_pointer_operator (pp, TREE_TYPE (t));
   pp_cxx_id_expression (pp, DECL_NAME (t));
 }
      pp_cxx_abstract_declarator (pp, TREE_TYPE (t));
      break;

    case 135:
      pp_cxx_space_for_pointer_operator (pp, TREE_TYPE (TREE_TYPE (t)));
      pp_cxx_id_expression (pp, t);
      pp_cxx_parameter_declaration_clause (pp, t);

      if (DECL_NONSTATIC_MEMBER_FUNCTION_P (t))
 {
   pp_base (pp)->padding = pp_before;
   pp_cxx_cv_qualifier_seq (pp, pp_cxx_implicit_parameter_type (t));
 }

      pp_cxx_exception_specification (pp, TREE_TYPE (t));
      break;

    case 129:
    case 133:
    case 130:
    case 132:
    case 131:
      break;

    default:
      pp_c_direct_declarator (pp_c_base (pp), t);
      break;
    }
}
