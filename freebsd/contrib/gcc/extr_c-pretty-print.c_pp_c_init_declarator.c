
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_pretty_printer ;


 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_LIST ;
 int TREE_VALUE (scalar_t__) ;
 int pp_c_initializer (int *,scalar_t__) ;
 int pp_c_left_paren (int *) ;
 int pp_declarator (int *,scalar_t__) ;
 int pp_equal (int *) ;
 int pp_expression (int *,int ) ;
 int pp_right_paren (int *) ;
 int pp_space (int *) ;

void
pp_c_init_declarator (c_pretty_printer *pp, tree t)
{
  pp_declarator (pp, t);


  if (TREE_CODE (t) != FUNCTION_DECL && DECL_INITIAL (t))
    {
      tree init = DECL_INITIAL (t);




      if (TREE_CODE (init) == TREE_LIST)
 {
   pp_c_left_paren (pp);
   pp_expression (pp, TREE_VALUE (init));
   pp_right_paren (pp);
 }
      else
 {
   pp_space (pp);
   pp_equal (pp);
   pp_space (pp);
   pp_c_initializer (pp, init);
 }
    }
}
