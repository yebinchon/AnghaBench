
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 scalar_t__ NUM_REGS ;
 scalar_t__ SP_REGNUM ;
 struct frame_id frame_id_build (int ,int ) ;
 int frame_pc_unwind (struct frame_info*) ;
 int frame_unwind_register_signed (struct frame_info*,scalar_t__) ;

__attribute__((used)) static struct frame_id
mips_unwind_dummy_id (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  return frame_id_build (frame_unwind_register_signed (next_frame, NUM_REGS + SP_REGNUM),
    frame_pc_unwind (next_frame));
}
