
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VEC_free (int ,int ,int ) ;
 int * free_ssanames ;
 int gc ;
 int ssa_names ;
 int tree ;

void
fini_ssanames (void)
{
  VEC_free (tree, gc, ssa_names);
  free_ssanames = ((void*)0);
}
