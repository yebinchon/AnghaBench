
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_pop_frame; } ;
typedef int gdbarch_deprecated_pop_frame_ftype ;



void
set_gdbarch_deprecated_pop_frame (struct gdbarch *gdbarch,
                                  gdbarch_deprecated_pop_frame_ftype deprecated_pop_frame)
{
  gdbarch->deprecated_pop_frame = deprecated_pop_frame;
}
