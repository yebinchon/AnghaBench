
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_init_frame_pc; } ;
typedef int gdbarch_deprecated_init_frame_pc_ftype ;



void
set_gdbarch_deprecated_init_frame_pc (struct gdbarch *gdbarch,
                                      gdbarch_deprecated_init_frame_pc_ftype deprecated_init_frame_pc)
{
  gdbarch->deprecated_init_frame_pc = deprecated_init_frame_pc;
}
