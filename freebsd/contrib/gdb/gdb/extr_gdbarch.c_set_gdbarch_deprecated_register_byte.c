
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_byte; } ;
typedef int gdbarch_deprecated_register_byte_ftype ;



void
set_gdbarch_deprecated_register_byte (struct gdbarch *gdbarch,
                                      gdbarch_deprecated_register_byte_ftype deprecated_register_byte)
{
  gdbarch->deprecated_register_byte = deprecated_register_byte;
}
