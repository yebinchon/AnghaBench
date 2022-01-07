
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ PC_IN_SIGTRAMP (int ,char*) ;
 int find_pc_partial_function (int ,char**,int *,int *) ;
 int frame_pc_unwind (struct frame_info*) ;
 struct frame_unwind const ia64_sigtramp_frame_unwind ;

__attribute__((used)) static const struct frame_unwind *
ia64_sigtramp_frame_sniffer (struct frame_info *next_frame)
{
  char *name;
  CORE_ADDR pc = frame_pc_unwind (next_frame);

  find_pc_partial_function (pc, &name, ((void*)0), ((void*)0));
  if (PC_IN_SIGTRAMP (pc, name))
    return &ia64_sigtramp_frame_unwind;

  return ((void*)0);
}
