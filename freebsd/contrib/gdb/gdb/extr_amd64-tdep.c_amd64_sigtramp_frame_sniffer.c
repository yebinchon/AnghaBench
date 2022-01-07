
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {int sigcontext_addr; } ;
typedef int CORE_ADDR ;


 scalar_t__ PC_IN_SIGTRAMP (int ,char*) ;
 struct frame_unwind const amd64_sigtramp_frame_unwind ;
 int current_gdbarch ;
 int find_pc_partial_function (int ,char**,int *,int *) ;
 int frame_pc_unwind (struct frame_info*) ;
 int gdb_assert (int ) ;
 TYPE_1__* gdbarch_tdep (int ) ;

__attribute__((used)) static const struct frame_unwind *
amd64_sigtramp_frame_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  char *name;

  find_pc_partial_function (pc, &name, ((void*)0), ((void*)0));
  if (PC_IN_SIGTRAMP (pc, name))
    {
      gdb_assert (gdbarch_tdep (current_gdbarch)->sigcontext_addr);

      return &amd64_sigtramp_frame_unwind;
    }

  return ((void*)0);
}
