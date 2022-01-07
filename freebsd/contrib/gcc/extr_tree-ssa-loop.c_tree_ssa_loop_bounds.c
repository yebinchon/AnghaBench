
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 int estimate_numbers_of_iterations (int ) ;
 int scev_reset () ;

__attribute__((used)) static unsigned int
tree_ssa_loop_bounds (void)
{
  if (!current_loops)
    return 0;

  estimate_numbers_of_iterations (current_loops);
  scev_reset ();
  return 0;
}
