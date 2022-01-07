
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ NULL_TREE ;
 int TB_up_ht ;
 scalar_t__ htab_find (int ,scalar_t__) ;

__attribute__((used)) static tree
TB_up_expr (tree node)
{
  tree res;
  if (node == NULL_TREE)
    return NULL_TREE;

  res = (tree) htab_find (TB_up_ht, node);
  return res;
}
