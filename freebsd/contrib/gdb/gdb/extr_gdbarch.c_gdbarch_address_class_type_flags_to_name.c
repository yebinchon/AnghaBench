
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {char const* (* address_class_type_flags_to_name ) (struct gdbarch*,int) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 char const* stub1 (struct gdbarch*,int) ;

const char *
gdbarch_address_class_type_flags_to_name (struct gdbarch *gdbarch, int type_flags)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->address_class_type_flags_to_name != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_address_class_type_flags_to_name called\n");
  return gdbarch->address_class_type_flags_to_name (gdbarch, type_flags);
}
