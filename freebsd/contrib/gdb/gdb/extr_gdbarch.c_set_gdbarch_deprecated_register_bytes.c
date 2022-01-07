
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_bytes; } ;



void
set_gdbarch_deprecated_register_bytes (struct gdbarch *gdbarch,
                                       int deprecated_register_bytes)
{
  gdbarch->deprecated_register_bytes = deprecated_register_bytes;
}
