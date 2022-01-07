
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_frame_locals_address; } ;
typedef int gdbarch_deprecated_frame_locals_address_ftype ;



void
set_gdbarch_deprecated_frame_locals_address (struct gdbarch *gdbarch,
                                             gdbarch_deprecated_frame_locals_address_ftype deprecated_frame_locals_address)
{
  gdbarch->deprecated_frame_locals_address = deprecated_frame_locals_address;
}
