
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cxx_pretty_printer ;






 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TYPE_P (int ) ;



 int pp_c_base (int *) ;
 int pp_c_unary_expression (int ,int ) ;
 int pp_cxx_cast_expression (int *,int ) ;
 int pp_cxx_delete_expression (int *,int ) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_left_paren (int *) ;
 int pp_cxx_new_expression (int *,int ) ;
 int pp_cxx_right_paren (int *) ;
 int pp_cxx_type_id (int *,int ) ;
 int pp_cxx_whitespace (int *) ;
 int pp_plus (int *) ;
 int pp_unary_expression (int *,int ) ;

__attribute__((used)) static void
pp_cxx_unary_expression (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = TREE_CODE (t);
  switch (code)
    {
    case 132:
    case 128:
      pp_cxx_new_expression (pp, t);
      break;

    case 133:
    case 129:
      pp_cxx_delete_expression (pp, t);
      break;

    case 131:
    case 134:
      pp_cxx_identifier (pp, code == 131 ? "sizeof" : "__alignof__");
      pp_cxx_whitespace (pp);
      if (TYPE_P (TREE_OPERAND (t, 0)))
 {
   pp_cxx_left_paren (pp);
   pp_cxx_type_id (pp, TREE_OPERAND (t, 0));
   pp_cxx_right_paren (pp);
 }
      else
 pp_unary_expression (pp, TREE_OPERAND (t, 0));
      break;

    case 130:
      pp_plus (pp);
      pp_cxx_cast_expression (pp, TREE_OPERAND (t, 0));
      break;

    default:
      pp_c_unary_expression (pp_c_base (pp), t);
      break;
    }
}
