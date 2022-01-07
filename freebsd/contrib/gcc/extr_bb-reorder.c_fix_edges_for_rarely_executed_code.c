
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge ;


 int HAS_LONG_COND_BRANCH ;
 int HAS_LONG_UNCOND_BRANCH ;
 int add_labels_and_missing_jumps (int *,int) ;
 int add_reg_crossing_jump_notes () ;
 int fix_crossing_conditional_branches () ;
 int fix_crossing_unconditional_branches () ;
 int fix_up_fall_thru_edges () ;
 int get_insns () ;
 int max_reg_num () ;
 int reg_scan (int ,int ) ;

__attribute__((used)) static void
fix_edges_for_rarely_executed_code (edge *crossing_edges,
        int n_crossing_edges)
{



  add_labels_and_missing_jumps (crossing_edges, n_crossing_edges);





  fix_up_fall_thru_edges ();





  if (!HAS_LONG_COND_BRANCH)
    fix_crossing_conditional_branches ();







  if (!HAS_LONG_UNCOND_BRANCH)
    {
      fix_crossing_unconditional_branches ();
      reg_scan (get_insns(), max_reg_num ());
    }

  add_reg_crossing_jump_notes ();
}
