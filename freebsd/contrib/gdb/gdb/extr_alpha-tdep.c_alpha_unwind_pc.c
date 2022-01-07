
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
typedef int ULONGEST ;
typedef int CORE_ADDR ;


 int ALPHA_PC_REGNUM ;
 int frame_unwind_unsigned_register (struct frame_info*,int ,int *) ;

__attribute__((used)) static CORE_ADDR
alpha_unwind_pc (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  ULONGEST pc;
  frame_unwind_unsigned_register (next_frame, ALPHA_PC_REGNUM, &pc);
  return pc;
}
