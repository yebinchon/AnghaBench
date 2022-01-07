
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int cxx_pretty_printer ;



 int NEW_EXPR_USE_GLOBAL (int ) ;
 int TREE_CODE (int ) ;
 int TREE_LIST ;
 int TREE_OPERAND (int ,int) ;

 int pp_c_base (int *) ;
 int pp_c_expression_list (int ,int ) ;
 int pp_cxx_call_argument_list (int *,int ) ;
 int pp_cxx_colon_colon (int *) ;
 int pp_cxx_expression (int *,int ) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_type_id (int *,int ) ;
 int pp_left_paren (int *) ;
 int pp_right_paren (int *) ;
 int pp_space (int *) ;
 int pp_unsupported_tree (int *,int ) ;
 int void_zero_node ;

__attribute__((used)) static void
pp_cxx_new_expression (cxx_pretty_printer *pp, tree t)
{
  enum tree_code code = TREE_CODE (t);
  switch (code)
    {
    case 129:
    case 128:
      if (NEW_EXPR_USE_GLOBAL (t))
 pp_cxx_colon_colon (pp);
      pp_cxx_identifier (pp, "new");
      if (TREE_OPERAND (t, 0))
 {
   pp_cxx_call_argument_list (pp, TREE_OPERAND (t, 0));
   pp_space (pp);
 }

      pp_cxx_type_id (pp, TREE_OPERAND (t, 1));
      if (TREE_OPERAND (t, 2))
 {
   pp_left_paren (pp);
   t = TREE_OPERAND (t, 2);
   if (TREE_CODE (t) == TREE_LIST)
     pp_c_expression_list (pp_c_base (pp), t);
   else if (t == void_zero_node)
     ;
   else
     pp_cxx_expression (pp, t);
   pp_right_paren (pp);
 }
      break;

    default:
      pp_unsupported_tree (pp, t);
    }
}
