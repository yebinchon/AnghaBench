
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_register_size; } ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;

int
gdbarch_deprecated_register_size (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_register_size called\n");
  return gdbarch->deprecated_register_size;
}
