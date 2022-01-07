
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_frame_init_saved_regs; } ;
typedef int gdbarch_deprecated_frame_init_saved_regs_ftype ;



void
set_gdbarch_deprecated_frame_init_saved_regs (struct gdbarch *gdbarch,
                                              gdbarch_deprecated_frame_init_saved_regs_ftype deprecated_frame_init_saved_regs)
{
  gdbarch->deprecated_frame_init_saved_regs = deprecated_frame_init_saved_regs;
}
