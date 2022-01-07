
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_init_extra_frame_info; } ;
typedef int gdbarch_deprecated_init_extra_frame_info_ftype ;



void
set_gdbarch_deprecated_init_extra_frame_info (struct gdbarch *gdbarch,
                                              gdbarch_deprecated_init_extra_frame_info_ftype deprecated_init_extra_frame_info)
{
  gdbarch->deprecated_init_extra_frame_info = deprecated_init_extra_frame_info;
}
