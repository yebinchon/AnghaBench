
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_convert_to_virtual; } ;
typedef int gdbarch_deprecated_register_convert_to_virtual_ftype ;



void
set_gdbarch_deprecated_register_convert_to_virtual (struct gdbarch *gdbarch,
                                                    gdbarch_deprecated_register_convert_to_virtual_ftype deprecated_register_convert_to_virtual)
{
  gdbarch->deprecated_register_convert_to_virtual = deprecated_register_convert_to_virtual;
}
