
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TDF_STATS ;
 int VEC (int ,int ) ;
 int VEC_alloc (int ,int ,int) ;
 int VEC_free (int ,int ,int) ;
 int analyze_scalar_evolution_for_all_loop_phi_nodes (int*) ;
 int current_loops ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int exit_conditions ;
 int heap ;
 int number_of_iterations_for_all_loops (int*) ;
 int select_loops_exit_conditions (int ,int*) ;
 int tree ;

void
scev_analysis (void)
{
  VEC(tree,heap) *exit_conditions;

  exit_conditions = VEC_alloc (tree, heap, 37);
  select_loops_exit_conditions (current_loops, &exit_conditions);

  if (dump_file && (dump_flags & TDF_STATS))
    analyze_scalar_evolution_for_all_loop_phi_nodes (&exit_conditions);

  number_of_iterations_for_all_loops (&exit_conditions);
  VEC_free (tree, heap, exit_conditions);
}
