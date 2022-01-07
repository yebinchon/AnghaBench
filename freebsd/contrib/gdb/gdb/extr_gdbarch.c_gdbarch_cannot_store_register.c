
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* cannot_store_register ) (int) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int) ;

int
gdbarch_cannot_store_register (struct gdbarch *gdbarch, int regnum)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->cannot_store_register != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_cannot_store_register called\n");
  return gdbarch->cannot_store_register (regnum);
}
