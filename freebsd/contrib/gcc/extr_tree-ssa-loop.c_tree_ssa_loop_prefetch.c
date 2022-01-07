
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 unsigned int tree_ssa_prefetch_arrays (int ) ;

__attribute__((used)) static unsigned int
tree_ssa_loop_prefetch (void)
{
  if (!current_loops)
    return 0;

  return tree_ssa_prefetch_arrays (current_loops);
}
