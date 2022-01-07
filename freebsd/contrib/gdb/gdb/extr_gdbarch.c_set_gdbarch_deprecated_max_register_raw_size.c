
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_max_register_raw_size; } ;



void
set_gdbarch_deprecated_max_register_raw_size (struct gdbarch *gdbarch,
                                              int deprecated_max_register_raw_size)
{
  gdbarch->deprecated_max_register_raw_size = deprecated_max_register_raw_size;
}
