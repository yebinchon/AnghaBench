
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_size; } ;



void
set_gdbarch_deprecated_register_size (struct gdbarch *gdbarch,
                                      int deprecated_register_size)
{
  gdbarch->deprecated_register_size = deprecated_register_size;
}
