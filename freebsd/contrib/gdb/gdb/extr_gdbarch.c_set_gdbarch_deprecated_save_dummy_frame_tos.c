
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_save_dummy_frame_tos; } ;
typedef int gdbarch_deprecated_save_dummy_frame_tos_ftype ;



void
set_gdbarch_deprecated_save_dummy_frame_tos (struct gdbarch *gdbarch,
                                             gdbarch_deprecated_save_dummy_frame_tos_ftype deprecated_save_dummy_frame_tos)
{
  gdbarch->deprecated_save_dummy_frame_tos = deprecated_save_dummy_frame_tos;
}
