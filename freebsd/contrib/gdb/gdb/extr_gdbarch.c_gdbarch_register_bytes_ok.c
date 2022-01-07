
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* register_bytes_ok ) (long) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (long) ;

int
gdbarch_register_bytes_ok (struct gdbarch *gdbarch, long nr_bytes)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->register_bytes_ok != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_register_bytes_ok called\n");
  return gdbarch->register_bytes_ok (nr_bytes);
}
