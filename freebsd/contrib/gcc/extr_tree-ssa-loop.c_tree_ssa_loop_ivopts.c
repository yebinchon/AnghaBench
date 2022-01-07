
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 int tree_ssa_iv_optimize (int ) ;

__attribute__((used)) static unsigned int
tree_ssa_loop_ivopts (void)
{
  if (!current_loops)
    return 0;

  tree_ssa_iv_optimize (current_loops);
  return 0;
}
