
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int cleanup_cfg (int ) ;
 int cse_main (int ,int ) ;
 int cse_not_expected ;
 int delete_dead_jumptables () ;
 int delete_trivially_dead_insns (int ,int ) ;
 int delete_unreachable_blocks () ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int flag_gcse ;
 int flag_rerun_cse_after_loop ;
 int get_insns () ;
 int max_reg_num () ;
 int optimize ;
 scalar_t__ purge_all_dead_edges () ;
 int rebuild_jump_labels (int ) ;
 int reg_scan (int ,int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_cse (void)
{
  int tem;

  if (dump_file)
    dump_flow_info (dump_file, dump_flags);

  reg_scan (get_insns (), max_reg_num ());

  tem = cse_main (get_insns (), max_reg_num ());
  if (tem)
    rebuild_jump_labels (get_insns ());
  if (purge_all_dead_edges ())
    delete_unreachable_blocks ();

  delete_trivially_dead_insns (get_insns (), max_reg_num ());



  cse_not_expected = !flag_rerun_cse_after_loop && !flag_gcse;

  if (tem)
    delete_dead_jumptables ();

  if (tem || optimize > 1)
    cleanup_cfg (CLEANUP_EXPENSIVE);
  return 0;
}
