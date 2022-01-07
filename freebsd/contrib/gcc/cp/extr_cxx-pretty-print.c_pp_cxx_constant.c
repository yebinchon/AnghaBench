
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int PAREN_STRING_LITERAL_P (int ) ;

 int TREE_CODE (int ) ;
 int pp_c_base (int *) ;
 int pp_c_constant (int ,int ) ;
 int pp_cxx_left_paren (int *) ;
 int pp_cxx_right_paren (int *) ;

__attribute__((used)) static void
pp_cxx_constant (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 128:
      {
 const bool in_parens = PAREN_STRING_LITERAL_P (t);
 if (in_parens)
   pp_cxx_left_paren (pp);
 pp_c_constant (pp_c_base (pp), t);
 if (in_parens)
   pp_cxx_right_paren (pp);
      }
      break;

    default:
      pp_c_constant (pp_c_base (pp), t);
      break;
    }
}
