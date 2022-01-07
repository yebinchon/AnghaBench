
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int frame_align; } ;
typedef int gdbarch_frame_align_ftype ;



void
set_gdbarch_frame_align (struct gdbarch *gdbarch,
                         gdbarch_frame_align_ftype frame_align)
{
  gdbarch->frame_align = frame_align;
}
