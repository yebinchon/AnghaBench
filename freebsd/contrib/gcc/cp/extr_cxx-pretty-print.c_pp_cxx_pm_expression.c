
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;





 int TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TYPE_P (int ) ;
 int pp_cxx_cast_expression (int *,int ) ;
 int pp_cxx_dot (int *) ;
 int pp_cxx_qualified_id (int *,int ) ;
 int pp_star (int *) ;

__attribute__((used)) static void
pp_cxx_pm_expression (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {

    case 128:
      if (TYPE_P (TREE_OPERAND (t, 0)))
 {
   pp_cxx_qualified_id (pp, t);
   break;
 }

    case 129:
    case 130:
      pp_cxx_pm_expression (pp, TREE_OPERAND (t, 0));
      pp_cxx_dot (pp);
      pp_star(pp);
      pp_cxx_cast_expression (pp, TREE_OPERAND (t, 1));
      break;


    default:
      pp_cxx_cast_expression (pp, t);
      break;
    }
}
