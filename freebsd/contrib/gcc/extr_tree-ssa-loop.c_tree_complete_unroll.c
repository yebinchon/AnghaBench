
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 scalar_t__ flag_peel_loops ;
 scalar_t__ flag_unroll_loops ;
 int optimize ;
 unsigned int tree_unroll_loops_completely (int ,int) ;

__attribute__((used)) static unsigned int
tree_complete_unroll (void)
{
  if (!current_loops)
    return 0;

  return tree_unroll_loops_completely (current_loops,
           flag_unroll_loops
     || flag_peel_loops
     || optimize >= 3);
}
