
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cxx_pretty_printer ;



 int DELETE_EXPR_USE_GLOBAL (int ) ;
 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;

 int pp_c_base (int *) ;
 int pp_c_cast_expression (int ,int ) ;
 int pp_cxx_colon_colon (int *) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_left_bracket (int *) ;
 int pp_right_bracket (int *) ;
 int pp_unsupported_tree (int *,int ) ;

__attribute__((used)) static void
pp_cxx_delete_expression (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = TREE_CODE (t);
  switch (code)
    {
    case 129:
    case 128:
      if (DELETE_EXPR_USE_GLOBAL (t))
 pp_cxx_colon_colon (pp);
      pp_cxx_identifier (pp, "delete");
      if (code == 128)
 {
   pp_left_bracket (pp);
   pp_right_bracket (pp);
 }
      pp_c_cast_expression (pp_c_base (pp), TREE_OPERAND (t, 0));
      break;

    default:
      pp_unsupported_tree (pp, t);
    }
}
