
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;



 int BASELINK_FUNCTIONS (int ) ;
 int STMT_EXPR_STMT (int ) ;





 int TREE_CODE (int ) ;

 int pp_c_base (int *) ;
 int pp_c_primary_expression (int ,int ) ;
 int pp_cxx_constant (int *,int ) ;
 int pp_cxx_id_expression (int *,int ) ;
 int pp_cxx_left_paren (int *) ;
 int pp_cxx_right_paren (int *) ;
 int pp_cxx_statement (int *,int ) ;
 int pp_cxx_unqualified_id (int *,int ) ;

__attribute__((used)) static void
pp_cxx_primary_expression (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 139:
    case 136:
    case 133:
      pp_cxx_constant (pp, t);
      break;

    case 143:
      t = BASELINK_FUNCTIONS (t);
    case 128:
    case 137:
    case 141:
    case 140:
    case 138:
    case 142:
    case 132:
      pp_cxx_id_expression (pp, t);
      break;

    case 135:
    case 129:
    case 130:
    case 131:
      pp_cxx_unqualified_id (pp, t);
      break;

    case 134:
      pp_cxx_left_paren (pp);
      pp_cxx_statement (pp, STMT_EXPR_STMT (t));
      pp_cxx_right_paren (pp);
      break;

    default:
      pp_c_primary_expression (pp_c_base (pp), t);
      break;
    }
}
