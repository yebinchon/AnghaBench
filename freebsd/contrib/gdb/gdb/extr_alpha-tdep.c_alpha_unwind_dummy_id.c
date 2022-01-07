
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
typedef int ULONGEST ;


 int ALPHA_SP_REGNUM ;
 struct frame_id frame_id_build (int ,int ) ;
 int frame_pc_unwind (struct frame_info*) ;
 int frame_unwind_unsigned_register (struct frame_info*,int ,int *) ;

__attribute__((used)) static struct frame_id
alpha_unwind_dummy_id (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  ULONGEST base;
  frame_unwind_unsigned_register (next_frame, ALPHA_SP_REGNUM, &base);
  return frame_id_build (base, frame_pc_unwind (next_frame));
}
