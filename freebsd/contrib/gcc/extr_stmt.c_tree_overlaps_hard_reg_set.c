
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HARD_REG_SET ;


 int decl_overlaps_hard_reg_set_p ;
 int walk_tree (int *,int ,int *,int *) ;

tree
tree_overlaps_hard_reg_set (tree decl, HARD_REG_SET *regs)
{
  return walk_tree (&decl, decl_overlaps_hard_reg_set_p, regs, ((void*)0));
}
