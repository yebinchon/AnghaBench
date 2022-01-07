
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CDI_DOMINATORS ;
 int VEC_free (int ,int ,int ) ;
 int calculate_dominance_info (int ) ;
 int cleanup_tree_cfg () ;
 int free_dominance_info (int ) ;
 int heap ;
 int stack ;
 int thread_through_all_blocks () ;
 int tree ;

__attribute__((used)) static void
finalize_jump_threads (void)
{
  bool cfg_altered = 0;
  cfg_altered = thread_through_all_blocks ();



  if (cfg_altered)
    {
      free_dominance_info (CDI_DOMINATORS);
      cleanup_tree_cfg ();
      calculate_dominance_info (CDI_DOMINATORS);
    }
  VEC_free (tree, heap, stack);
}
