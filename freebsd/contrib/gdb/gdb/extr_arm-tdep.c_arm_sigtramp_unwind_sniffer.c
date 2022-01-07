
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;


 scalar_t__ PC_IN_SIGTRAMP (int ,char*) ;
 scalar_t__ SIGCONTEXT_REGISTER_ADDRESS_P () ;
 struct frame_unwind const arm_sigtramp_unwind ;
 int frame_pc_unwind (struct frame_info*) ;

__attribute__((used)) static const struct frame_unwind *
arm_sigtramp_unwind_sniffer (struct frame_info *next_frame)
{





  if (SIGCONTEXT_REGISTER_ADDRESS_P ()
      && PC_IN_SIGTRAMP (frame_pc_unwind (next_frame), (char *) 0))
    return &arm_sigtramp_unwind;

  return ((void*)0);
}
