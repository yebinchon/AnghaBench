
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dw2_output_indirect_constant_1 ;
 scalar_t__ indirect_pool ;
 int splay_tree_foreach (scalar_t__,int ,int *) ;

void
dw2_output_indirect_constants (void)
{
  if (indirect_pool)
    splay_tree_foreach (indirect_pool, dw2_output_indirect_constant_1, ((void*)0));
}
