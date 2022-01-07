
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current_loops ;
 int free_numbers_of_iterations_estimates (int ) ;
 int perform_tree_ssa_dce (int) ;
 int scev_reset () ;

__attribute__((used)) static unsigned int
tree_ssa_dce_loop (void)
{
  perform_tree_ssa_dce ( 0);
  free_numbers_of_iterations_estimates (current_loops);
  scev_reset ();
  return 0;
}
