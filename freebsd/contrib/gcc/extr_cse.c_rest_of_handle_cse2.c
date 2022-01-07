
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int TV_JUMP ;
 int cleanup_cfg (int ) ;
 int cse_condition_code_reg () ;
 int cse_main (int ,int ) ;
 int cse_not_expected ;
 int delete_dead_jumptables () ;
 int delete_trivially_dead_insns (int ,int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int get_insns () ;
 int max_reg_num () ;
 int purge_all_dead_edges () ;
 int rebuild_jump_labels (int ) ;
 int reg_scan (int ,int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_cse2 (void)
{
  int tem;

  if (dump_file)
    dump_flow_info (dump_file, dump_flags);

  tem = cse_main (get_insns (), max_reg_num ());





  cse_condition_code_reg ();

  purge_all_dead_edges ();
  delete_trivially_dead_insns (get_insns (), max_reg_num ());

  if (tem)
    {
      timevar_push (TV_JUMP);
      rebuild_jump_labels (get_insns ());
      delete_dead_jumptables ();
      cleanup_cfg (CLEANUP_EXPENSIVE);
      timevar_pop (TV_JUMP);
    }
  reg_scan (get_insns (), max_reg_num ());
  cse_not_expected = 1;
  return 0;
}
