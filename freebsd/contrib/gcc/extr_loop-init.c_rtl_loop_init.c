
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOOPS_NORMAL ;
 int cfg_layout_initialize (int ) ;
 int current_loops ;
 scalar_t__ dump_file ;
 int dump_flags ;
 int dump_flow_info (scalar_t__,int ) ;
 int loop_optimizer_init (int ) ;

__attribute__((used)) static unsigned int
rtl_loop_init (void)
{
  if (dump_file)
    dump_flow_info (dump_file, dump_flags);


  cfg_layout_initialize (0);

  current_loops = loop_optimizer_init (LOOPS_NORMAL);
  return 0;
}
