
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int frame_red_zone_size; } ;



void
set_gdbarch_frame_red_zone_size (struct gdbarch *gdbarch,
                                 int frame_red_zone_size)
{
  gdbarch->frame_red_zone_size = frame_red_zone_size;
}
