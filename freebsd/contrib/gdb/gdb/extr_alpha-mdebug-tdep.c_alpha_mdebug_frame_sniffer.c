
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int * alpha_extra_func_info_t ;
typedef int CORE_ADDR ;


 struct frame_unwind const alpha_mdebug_frame_unwind ;
 scalar_t__ alpha_mdebug_in_prologue (int ,int *) ;
 int * find_proc_desc (int ) ;
 int frame_pc_unwind (struct frame_info*) ;

const struct frame_unwind *
alpha_mdebug_frame_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  alpha_extra_func_info_t proc_desc;



  proc_desc = find_proc_desc (pc);
  if (proc_desc == ((void*)0))
    return ((void*)0);



  if (alpha_mdebug_in_prologue (pc, proc_desc))
    return ((void*)0);

  return &alpha_mdebug_frame_unwind;
}
