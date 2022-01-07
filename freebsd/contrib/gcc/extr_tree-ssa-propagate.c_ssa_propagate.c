
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssa_prop_visit_stmt_fn ;
typedef int ssa_prop_visit_phi_fn ;
typedef int basic_block ;


 scalar_t__ VEC_length (int ,int ) ;
 int cfg_blocks_empty_p () ;
 int cfg_blocks_get () ;
 int interesting_ssa_edges ;
 int process_ssa_edge_worklist (int *) ;
 int simulate_block (int ) ;
 int ssa_prop_fini () ;
 int ssa_prop_init () ;
 int ssa_prop_visit_phi ;
 int ssa_prop_visit_stmt ;
 int tree ;
 int varying_ssa_edges ;

void
ssa_propagate (ssa_prop_visit_stmt_fn visit_stmt,
        ssa_prop_visit_phi_fn visit_phi)
{
  ssa_prop_visit_stmt = visit_stmt;
  ssa_prop_visit_phi = visit_phi;

  ssa_prop_init ();


  while (!cfg_blocks_empty_p ()
  || VEC_length (tree, interesting_ssa_edges) > 0
  || VEC_length (tree, varying_ssa_edges) > 0)
    {
      if (!cfg_blocks_empty_p ())
 {

   basic_block dest_block = cfg_blocks_get ();
   simulate_block (dest_block);
 }



      process_ssa_edge_worklist (&varying_ssa_edges);


      process_ssa_edge_worklist (&interesting_ssa_edges);
    }

  ssa_prop_fini ();
}
