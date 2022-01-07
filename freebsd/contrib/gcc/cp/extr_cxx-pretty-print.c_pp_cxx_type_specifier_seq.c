
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;



 int DECL_CONSTRUCTOR_P (int ) ;
 int FUNCTION_DECL ;




 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

 int TYPE_METHOD_BASETYPE (int ) ;
 int pp_c_base (int *) ;
 int pp_c_specifier_qualifier_list (int ,int ) ;
 int pp_cxx_cv_qualifier_seq (int *,int ) ;
 int pp_cxx_nested_name_specifier (int *,int ) ;
 int pp_cxx_simple_type_specifier (int *,int ) ;
 int pp_cxx_space_for_pointer_operator (int *,int ) ;

__attribute__((used)) static void
pp_cxx_type_specifier_seq (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 131:
    case 129:
    case 130:
    case 128:
    case 133:
      pp_cxx_cv_qualifier_seq (pp, t);
      pp_cxx_simple_type_specifier (pp, t);
      break;

    case 132:
      pp_cxx_type_specifier_seq (pp, TREE_TYPE (t));
      pp_cxx_space_for_pointer_operator (pp, TREE_TYPE (t));
      pp_cxx_nested_name_specifier (pp, TYPE_METHOD_BASETYPE (t));
      break;

    default:
      if (!(TREE_CODE (t) == FUNCTION_DECL && DECL_CONSTRUCTOR_P (t)))
 pp_c_specifier_qualifier_list (pp_c_base (pp), t);
    }
}
