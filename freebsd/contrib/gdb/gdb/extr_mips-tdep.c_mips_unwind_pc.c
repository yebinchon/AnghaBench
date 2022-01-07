
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {scalar_t__ pc; } ;
typedef int CORE_ADDR ;


 scalar_t__ NUM_REGS ;
 int frame_unwind_register_signed (struct frame_info*,scalar_t__) ;
 TYPE_1__* mips_regnum (struct gdbarch*) ;

__attribute__((used)) static CORE_ADDR
mips_unwind_pc (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  return frame_unwind_register_signed (next_frame,
           NUM_REGS + mips_regnum (gdbarch)->pc);
}
