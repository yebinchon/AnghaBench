
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (int ,int ,int ) ;
 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY_P () ;
 struct frame_unwind const dummy_frame_unwind ;
 int frame_pc_unwind (struct frame_info*) ;
 scalar_t__ pc_in_dummy_frame (int ) ;

const struct frame_unwind *
dummy_frame_sniffer (struct frame_info *next_frame)
{
  CORE_ADDR pc = frame_pc_unwind (next_frame);
  if (DEPRECATED_PC_IN_CALL_DUMMY_P ()
      ? DEPRECATED_PC_IN_CALL_DUMMY (pc, 0, 0)
      : pc_in_dummy_frame (pc))
    return &dummy_frame_unwind;
  else
    return ((void*)0);
}
