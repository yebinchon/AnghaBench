
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int ARM_SP_REGNUM ;
 int frame_unwind_register_unsigned (struct frame_info*,int ) ;

__attribute__((used)) static CORE_ADDR
arm_unwind_sp (struct gdbarch *gdbarch, struct frame_info *this_frame)
{
  return frame_unwind_register_unsigned (this_frame, ARM_SP_REGNUM);
}
