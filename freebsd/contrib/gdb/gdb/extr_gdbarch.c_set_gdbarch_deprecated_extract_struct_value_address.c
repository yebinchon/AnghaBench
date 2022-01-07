
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_extract_struct_value_address; } ;
typedef int gdbarch_deprecated_extract_struct_value_address_ftype ;



void
set_gdbarch_deprecated_extract_struct_value_address (struct gdbarch *gdbarch,
                                                     gdbarch_deprecated_extract_struct_value_address_ftype deprecated_extract_struct_value_address)
{
  gdbarch->deprecated_extract_struct_value_address = deprecated_extract_struct_value_address;
}
