
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_raw_size; } ;
typedef int gdbarch_deprecated_register_raw_size_ftype ;



void
set_gdbarch_deprecated_register_raw_size (struct gdbarch *gdbarch,
                                          gdbarch_deprecated_register_raw_size_ftype deprecated_register_raw_size)
{
  gdbarch->deprecated_register_raw_size = deprecated_register_raw_size;
}
