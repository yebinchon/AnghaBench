
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int address_class_type_flags; } ;
typedef int gdbarch_address_class_type_flags_ftype ;



void
set_gdbarch_address_class_type_flags (struct gdbarch *gdbarch,
                                      gdbarch_address_class_type_flags_ftype address_class_type_flags)
{
  gdbarch->address_class_type_flags = address_class_type_flags;
}
