
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_use_generic_dummy_frames; } ;



void
set_gdbarch_deprecated_use_generic_dummy_frames (struct gdbarch *gdbarch,
                                                 int deprecated_use_generic_dummy_frames)
{
  gdbarch->deprecated_use_generic_dummy_frames = deprecated_use_generic_dummy_frames;
}
