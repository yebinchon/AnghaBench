
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int NULL_TREE ;
 int TB_next_expr (int ) ;

__attribute__((used)) static tree
TB_last_in_bind (tree node)
{
  tree t;

  if (node == NULL_TREE)
    return NULL_TREE;

  while ((t = TB_next_expr (node)))
    node = t;

  return node;
}
