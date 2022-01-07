
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int cleanup_cfg (int ) ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int get_insns () ;
 int max_reg_num () ;
 int reg_scan (int ,int ) ;
 int tracer (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_tracer (void)
{
  if (dump_file)
    dump_flow_info (dump_file, dump_flags);
  tracer (0);
  cleanup_cfg (CLEANUP_EXPENSIVE);
  reg_scan (get_insns (), max_reg_num ());
  return 0;
}
