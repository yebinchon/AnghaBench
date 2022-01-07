
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_virtual_size; } ;
typedef int gdbarch_deprecated_register_virtual_size_ftype ;



void
set_gdbarch_deprecated_register_virtual_size (struct gdbarch *gdbarch,
                                              gdbarch_deprecated_register_virtual_size_ftype deprecated_register_virtual_size)
{
  gdbarch->deprecated_register_virtual_size = deprecated_register_virtual_size;
}
