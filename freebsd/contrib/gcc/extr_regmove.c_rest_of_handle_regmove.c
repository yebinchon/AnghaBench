
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_UPDATE_LIFE ;
 int cleanup_cfg (int) ;
 int get_insns () ;
 int max_reg_num () ;
 int regmove_optimize (int ,int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_regmove (void)
{
  regmove_optimize (get_insns (), max_reg_num ());
  cleanup_cfg (CLEANUP_EXPENSIVE | CLEANUP_UPDATE_LIFE);
  return 0;
}
