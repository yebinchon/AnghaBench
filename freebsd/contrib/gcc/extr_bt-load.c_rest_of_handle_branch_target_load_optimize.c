
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int branch_target_load_optimize (int ) ;
 int epilogue_completed ;
 scalar_t__ flag_branch_target_load_optimize ;
 scalar_t__ flag_branch_target_load_optimize2 ;
 int warning (int ,char*) ;

__attribute__((used)) static unsigned int
rest_of_handle_branch_target_load_optimize (void)
{
  static int warned = 0;




  if (flag_branch_target_load_optimize
      && flag_branch_target_load_optimize2
      && !warned)
    {
      warning (0, "branch target register load optimization is not intended "
    "to be run twice");

      warned = 1;
    }

  branch_target_load_optimize (epilogue_completed);
  return 0;
}
