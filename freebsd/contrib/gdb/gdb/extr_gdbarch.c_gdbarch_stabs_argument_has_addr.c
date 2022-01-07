
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int (* stabs_argument_has_addr ) (struct gdbarch*,struct type*) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct gdbarch*,struct type*) ;

int
gdbarch_stabs_argument_has_addr (struct gdbarch *gdbarch, struct type *type)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->stabs_argument_has_addr != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_stabs_argument_has_addr called\n");
  return gdbarch->stabs_argument_has_addr (gdbarch, type);
}
