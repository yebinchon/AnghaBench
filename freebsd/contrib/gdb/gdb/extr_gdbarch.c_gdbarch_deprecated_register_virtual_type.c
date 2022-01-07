
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {struct type* (* deprecated_register_virtual_type ) (int) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 struct type* stub1 (int) ;

struct type *
gdbarch_deprecated_register_virtual_type (struct gdbarch *gdbarch, int reg_nr)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_register_virtual_type != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_register_virtual_type called\n");
  return gdbarch->deprecated_register_virtual_type (reg_nr);
}
