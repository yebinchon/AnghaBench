
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_frame_saved_pc; } ;
typedef int gdbarch_deprecated_frame_saved_pc_ftype ;



void
set_gdbarch_deprecated_frame_saved_pc (struct gdbarch *gdbarch,
                                       gdbarch_deprecated_frame_saved_pc_ftype deprecated_frame_saved_pc)
{
  gdbarch->deprecated_frame_saved_pc = deprecated_frame_saved_pc;
}
