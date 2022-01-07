
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef int c_pretty_printer ;


 scalar_t__ NULL_TREE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_VALUE (scalar_t__) ;
 int pp_expression (int *,int ) ;
 int pp_separate_with (int *,char) ;

void
pp_c_expression_list (c_pretty_printer *pp, tree e)
{
  for (; e != NULL_TREE; e = TREE_CHAIN (e))
    {
      pp_expression (pp, TREE_VALUE (e));
      if (TREE_CHAIN (e))
 pp_separate_with (pp, ',');
    }
}
