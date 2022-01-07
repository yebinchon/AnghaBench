
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ flag_branch_target_load_optimize2 ;
 scalar_t__ optimize ;

__attribute__((used)) static bool
gate_handle_branch_target_load_optimize (void)
{
  return (optimize > 0 && flag_branch_target_load_optimize2);
}
