
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int branch_target_load_optimize (int) ;
 int cleanup_cfg (int ) ;
 int epilogue_completed ;
 scalar_t__ flag_branch_target_load_optimize ;
 int flow2_completed ;
 int get_insns () ;
 scalar_t__ optimize ;
 int split_all_insns (int ) ;
 int thread_prologue_and_epilogue_insns (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_flow2 (void)
{


  if (optimize > 0)

    split_all_insns (0);

  if (flag_branch_target_load_optimize)
    branch_target_load_optimize (epilogue_completed);

  if (optimize)
    cleanup_cfg (CLEANUP_EXPENSIVE);





  thread_prologue_and_epilogue_insns (get_insns ());
  epilogue_completed = 1;
  flow2_completed = 1;
  return 0;
}
