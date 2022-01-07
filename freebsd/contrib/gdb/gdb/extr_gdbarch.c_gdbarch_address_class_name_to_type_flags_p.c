
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int * address_class_name_to_type_flags; } ;


 int gdb_assert (int ) ;

int
gdbarch_address_class_name_to_type_flags_p (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  return gdbarch->address_class_name_to_type_flags != ((void*)0);
}
