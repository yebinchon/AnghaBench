
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int c_pretty_printer ;


 scalar_t__ CONSTRUCTOR ;
 scalar_t__ TREE_CODE (int ) ;
 int pp_c_brace_enclosed_initializer_list (int *,int ) ;
 int pp_expression (int *,int ) ;

__attribute__((used)) static void
pp_c_initializer (c_pretty_printer *pp, tree e)
{
  if (TREE_CODE (e) == CONSTRUCTOR)
    pp_c_brace_enclosed_initializer_list (pp, e);
  else
    pp_expression (pp, e);
}
