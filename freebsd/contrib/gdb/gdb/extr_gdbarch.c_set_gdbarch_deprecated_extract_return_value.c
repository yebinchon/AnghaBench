
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_extract_return_value; } ;
typedef int gdbarch_deprecated_extract_return_value_ftype ;



void
set_gdbarch_deprecated_extract_return_value (struct gdbarch *gdbarch,
                                             gdbarch_deprecated_extract_return_value_ftype deprecated_extract_return_value)
{
  gdbarch->deprecated_extract_return_value = deprecated_extract_return_value;
}
