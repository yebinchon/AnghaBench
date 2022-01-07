
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int ARM_PC_REGNUM ;
 scalar_t__ IS_THUMB_ADDR (int ) ;
 int UNMAKE_THUMB_ADDR (int ) ;
 int frame_unwind_register_unsigned (struct frame_info*,int ) ;

__attribute__((used)) static CORE_ADDR
arm_unwind_pc (struct gdbarch *gdbarch, struct frame_info *this_frame)
{
  CORE_ADDR pc;
  pc = frame_unwind_register_unsigned (this_frame, ARM_PC_REGNUM);
  return IS_THUMB_ADDR (pc) ? UNMAKE_THUMB_ADDR (pc) : pc;
}
