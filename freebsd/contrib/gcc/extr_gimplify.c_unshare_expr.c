
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int mostly_copy_tree_r ;
 int walk_tree (int *,int ,int *,int *) ;

tree
unshare_expr (tree expr)
{
  walk_tree (&expr, mostly_copy_tree_r, ((void*)0), ((void*)0));
  return expr;
}
