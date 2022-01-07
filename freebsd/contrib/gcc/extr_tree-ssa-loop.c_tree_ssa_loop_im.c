
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 int tree_ssa_lim (int ) ;

__attribute__((used)) static unsigned int
tree_ssa_loop_im (void)
{
  if (!current_loops)
    return 0;

  tree_ssa_lim (current_loops);
  return 0;
}
