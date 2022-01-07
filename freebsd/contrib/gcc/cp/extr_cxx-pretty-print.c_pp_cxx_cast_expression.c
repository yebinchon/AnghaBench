
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;



 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int ) ;
 int TREE_TYPE (int ) ;
 int pp_c_base (int *) ;
 int pp_c_cast_expression (int ,int ) ;
 int pp_cxx_call_argument_list (int *,int ) ;
 int pp_cxx_type_id (int *,int ) ;

__attribute__((used)) static void
pp_cxx_cast_expression (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 128:
      pp_cxx_type_id (pp, TREE_TYPE (t));
      pp_cxx_call_argument_list (pp, TREE_OPERAND (t, 0));
      break;

    default:
      pp_c_cast_expression (pp_c_base (pp), t);
      break;
    }
}
