
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int TV_CSE ;
 int TV_JUMP ;
 int cleanup_cfg (int ) ;
 int cse_main (int ,int ) ;
 int cse_not_expected ;
 int delete_dead_jumptables () ;
 int delete_trivially_dead_insns (int ,int ) ;
 int flag_cse_follow_jumps ;
 int flag_cse_skip_blocks ;
 scalar_t__ flag_expensive_optimizations ;
 int flag_rerun_cse_after_loop ;
 int gcse_main (int ) ;
 int get_insns () ;
 int max_reg_num () ;
 int purge_all_dead_edges () ;
 int rebuild_jump_labels (int ) ;
 int reg_scan (int ,int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_gcse (void)
{
  int save_csb, save_cfj;
  int tem2 = 0, tem;

  tem = gcse_main (get_insns ());
  rebuild_jump_labels (get_insns ());
  delete_trivially_dead_insns (get_insns (), max_reg_num ());

  save_csb = flag_cse_skip_blocks;
  save_cfj = flag_cse_follow_jumps;
  flag_cse_skip_blocks = flag_cse_follow_jumps = 0;



  if (flag_expensive_optimizations)
    {
      timevar_push (TV_CSE);
      reg_scan (get_insns (), max_reg_num ());
      tem2 = cse_main (get_insns (), max_reg_num ());
      purge_all_dead_edges ();
      delete_trivially_dead_insns (get_insns (), max_reg_num ());
      timevar_pop (TV_CSE);
      cse_not_expected = !flag_rerun_cse_after_loop;
    }



  if (tem || tem2)
    {
      timevar_push (TV_JUMP);
      rebuild_jump_labels (get_insns ());
      delete_dead_jumptables ();
      cleanup_cfg (CLEANUP_EXPENSIVE);
      timevar_pop (TV_JUMP);
    }

  flag_cse_skip_blocks = save_csb;
  flag_cse_follow_jumps = save_cfj;
  return 0;
}
