
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_virtual_type; } ;
typedef int gdbarch_deprecated_register_virtual_type_ftype ;



void
set_gdbarch_deprecated_register_virtual_type (struct gdbarch *gdbarch,
                                              gdbarch_deprecated_register_virtual_type_ftype deprecated_register_virtual_type)
{
  gdbarch->deprecated_register_virtual_type = deprecated_register_virtual_type;
}
