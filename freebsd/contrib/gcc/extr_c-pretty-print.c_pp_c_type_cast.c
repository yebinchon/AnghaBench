
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 int pp_c_left_paren (int *) ;
 int pp_c_right_paren (int *) ;
 int pp_type_id (int *,int ) ;

__attribute__((used)) static void
pp_c_type_cast (c_pretty_printer *pp, tree t)
{
  pp_c_left_paren (pp);
  pp_type_id (pp, t);
  pp_c_right_paren (pp);
}
