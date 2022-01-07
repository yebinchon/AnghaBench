
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_convert_to_raw; } ;
typedef int gdbarch_deprecated_register_convert_to_raw_ftype ;



void
set_gdbarch_deprecated_register_convert_to_raw (struct gdbarch *gdbarch,
                                                gdbarch_deprecated_register_convert_to_raw_ftype deprecated_register_convert_to_raw)
{
  gdbarch->deprecated_register_convert_to_raw = deprecated_register_convert_to_raw;
}
