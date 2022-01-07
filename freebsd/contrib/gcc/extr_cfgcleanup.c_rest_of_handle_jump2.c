
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_THREADING ;
 int cleanup_cfg (int) ;
 int delete_trivially_dead_insns (int ,int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int expected_value_to_br_prob () ;
 scalar_t__ flag_guess_branch_prob ;
 scalar_t__ flag_thread_jumps ;
 int get_insns () ;
 int max_reg_num () ;
 scalar_t__ optimize ;
 int purge_line_number_notes () ;
 int reg_scan (int ,int ) ;
 int renumber_insns () ;

__attribute__((used)) static unsigned int
rest_of_handle_jump2 (void)
{


  if (flag_guess_branch_prob)
    expected_value_to_br_prob ();

  delete_trivially_dead_insns (get_insns (), max_reg_num ());
  reg_scan (get_insns (), max_reg_num ());
  if (dump_file)
    dump_flow_info (dump_file, dump_flags);
  cleanup_cfg ((optimize ? CLEANUP_EXPENSIVE : 0)
        | (flag_thread_jumps ? CLEANUP_THREADING : 0));

  purge_line_number_notes ();

  if (optimize)
    cleanup_cfg (CLEANUP_EXPENSIVE);






  renumber_insns ();
  return 0;
}
