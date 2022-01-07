
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int TV_JUMP ;
 int cleanup_cfg (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 scalar_t__ flag_if_conversion ;
 int get_insns () ;
 int if_convert (int ) ;
 int max_reg_num () ;
 int reg_scan (int ,int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_if_conversion (void)
{
  if (flag_if_conversion)
    {
      if (dump_file)
        dump_flow_info (dump_file, dump_flags);
      cleanup_cfg (CLEANUP_EXPENSIVE);
      reg_scan (get_insns (), max_reg_num ());
      if_convert (0);
    }

  timevar_push (TV_JUMP);
  cleanup_cfg (CLEANUP_EXPENSIVE);
  reg_scan (get_insns (), max_reg_num ());
  timevar_pop (TV_JUMP);
  return 0;
}
