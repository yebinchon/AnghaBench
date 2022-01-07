
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_base {int dummy; } ;
typedef int * alpha_extra_func_info_t ;
typedef int CORE_ADDR ;


 struct frame_base const alpha_mdebug_frame_base ;
 int * find_proc_desc (int ) ;
 int frame_pc_unwind (struct frame_info*) ;

__attribute__((used)) static const struct frame_base *
alpha_mdebug_frame_base_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  alpha_extra_func_info_t proc_desc;



  proc_desc = find_proc_desc (pc);
  if (proc_desc == ((void*)0))
    return ((void*)0);

  return &alpha_mdebug_frame_base;
}
