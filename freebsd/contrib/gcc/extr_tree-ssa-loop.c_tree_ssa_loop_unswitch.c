
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 unsigned int tree_ssa_unswitch_loops (int ) ;

__attribute__((used)) static unsigned int
tree_ssa_loop_unswitch (void)
{
  if (!current_loops)
    return 0;

  return tree_ssa_unswitch_loops (current_loops);
}
