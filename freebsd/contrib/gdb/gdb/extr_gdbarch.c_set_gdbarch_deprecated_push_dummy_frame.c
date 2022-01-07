
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_push_dummy_frame; } ;
typedef int gdbarch_deprecated_push_dummy_frame_ftype ;



void
set_gdbarch_deprecated_push_dummy_frame (struct gdbarch *gdbarch,
                                         gdbarch_deprecated_push_dummy_frame_ftype deprecated_push_dummy_frame)
{
  gdbarch->deprecated_push_dummy_frame = deprecated_push_dummy_frame;
}
