
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
typedef int cxx_pretty_printer ;
struct TYPE_2__ {int padding; } ;
 int const TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TREE_VALUE (int ) ;

 int TYPE_ARG_TYPES (int ) ;
 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;

 TYPE_1__* pp_base (int *) ;
 int pp_before ;
 int pp_c_base (int *) ;
 int pp_c_direct_abstract_declarator (int ,int ) ;
 int pp_cxx_abstract_declarator (int *,int ) ;
 int pp_cxx_cv_qualifier_seq (int *,int ) ;
 int pp_cxx_exception_specification (int *,int ) ;
 int pp_cxx_parameter_declaration_clause (int *,int ) ;

__attribute__((used)) static void
pp_cxx_direct_abstract_declarator (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 132:
      pp_cxx_abstract_declarator (pp, t);
      break;

    case 133:
      if (TYPE_PTRMEMFUNC_P (t))
 pp_cxx_direct_abstract_declarator (pp, TYPE_PTRMEMFUNC_FN_TYPE (t));
      break;

    case 134:
    case 135:
      pp_cxx_parameter_declaration_clause (pp, t);
      pp_cxx_direct_abstract_declarator (pp, TREE_TYPE (t));
      if (TREE_CODE (t) == 134)
 {
   pp_base (pp)->padding = pp_before;
   pp_cxx_cv_qualifier_seq
     (pp, TREE_TYPE (TREE_VALUE (TYPE_ARG_TYPES (t))));
 }
      pp_cxx_exception_specification (pp, t);
      break;

    case 129:
    case 130:
    case 131:
    case 136:
    case 128:
      break;

    default:
      pp_c_direct_abstract_declarator (pp_c_base (pp), t);
      break;
    }
}
