
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * current_loops ;
 int free_numbers_of_iterations_estimates (int *) ;
 int loop_optimizer_finalize (int *) ;
 int scev_finalize () ;

__attribute__((used)) static unsigned int
tree_ssa_loop_done (void)
{
  if (!current_loops)
    return 0;

  free_numbers_of_iterations_estimates (current_loops);
  scev_finalize ();
  loop_optimizer_finalize (current_loops);
  current_loops = ((void*)0);
  return 0;
}
