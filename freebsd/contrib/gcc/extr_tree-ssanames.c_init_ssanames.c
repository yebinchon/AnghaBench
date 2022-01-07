
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NULL_TREE ;
 int VEC_alloc (int ,int ,int) ;
 int VEC_quick_push (int ,int ,int ) ;
 int * free_ssanames ;
 int gc ;
 int ssa_names ;
 int tree ;

void
init_ssanames (void)
{
  ssa_names = VEC_alloc (tree, gc, 50);
  VEC_quick_push (tree, ssa_names, NULL_TREE);
  free_ssanames = ((void*)0);
}
