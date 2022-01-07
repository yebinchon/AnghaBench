
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 unsigned int remove_empty_loops (int ) ;

__attribute__((used)) static unsigned int
tree_ssa_empty_loop (void)
{
  if (!current_loops)
    return 0;

  return remove_empty_loops (current_loops);
}
