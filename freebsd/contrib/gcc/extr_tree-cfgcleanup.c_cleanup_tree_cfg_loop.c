
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitmap ;


 int BITMAP_ALLOC (int *) ;
 int BITMAP_FREE (int ) ;
 int CDI_DOMINATORS ;
 int TODO_update_ssa ;
 int calculate_dominance_info (int ) ;
 int cleanup_tree_cfg () ;
 int current_loops ;
 int fix_loop_structure (int ,int ) ;
 int rewrite_into_loop_closed_ssa (int ,int ) ;
 int scev_reset () ;
 int verify_loop_structure (int ) ;

void
cleanup_tree_cfg_loop (void)
{
  bool changed = cleanup_tree_cfg ();

  if (changed)
    {
      bitmap changed_bbs = BITMAP_ALLOC (((void*)0));
      fix_loop_structure (current_loops, changed_bbs);
      calculate_dominance_info (CDI_DOMINATORS);




      rewrite_into_loop_closed_ssa (changed_bbs, TODO_update_ssa);

      BITMAP_FREE (changed_bbs);




      scev_reset ();
    }
}
