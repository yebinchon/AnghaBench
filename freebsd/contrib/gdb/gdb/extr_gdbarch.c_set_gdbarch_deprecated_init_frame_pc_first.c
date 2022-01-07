
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_init_frame_pc_first; } ;
typedef int gdbarch_deprecated_init_frame_pc_first_ftype ;



void
set_gdbarch_deprecated_init_frame_pc_first (struct gdbarch *gdbarch,
                                            gdbarch_deprecated_init_frame_pc_first_ftype deprecated_init_frame_pc_first)
{
  gdbarch->deprecated_init_frame_pc_first = deprecated_init_frame_pc_first;
}
