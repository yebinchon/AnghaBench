
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOOPS_NORMAL ;
 int TODO_update_ssa ;
 int * current_loops ;
 int finalize_jump_threads () ;
 int insert_range_assertions () ;
 int loop_optimizer_finalize (int *) ;
 int * loop_optimizer_init (int ) ;
 int remove_range_assertions () ;
 int scev_finalize () ;
 int scev_initialize (int *) ;
 int ssa_propagate (int ,int ) ;
 int update_ssa (int ) ;
 int vrp_finalize () ;
 int vrp_initialize () ;
 int vrp_visit_phi_node ;
 int vrp_visit_stmt ;

__attribute__((used)) static unsigned int
execute_vrp (void)
{
  insert_range_assertions ();

  current_loops = loop_optimizer_init (LOOPS_NORMAL);
  if (current_loops)
    scev_initialize (current_loops);

  vrp_initialize ();
  ssa_propagate (vrp_visit_stmt, vrp_visit_phi_node);
  vrp_finalize ();

  if (current_loops)
    {
      scev_finalize ();
      loop_optimizer_finalize (current_loops);
      current_loops = ((void*)0);
    }




  remove_range_assertions ();






  update_ssa (TODO_update_ssa);

  finalize_jump_threads ();
  return 0;
}
