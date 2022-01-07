
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int (* return_value_on_stack ) (struct type*) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct type*) ;

int
gdbarch_return_value_on_stack (struct gdbarch *gdbarch, struct type *type)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->return_value_on_stack != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_return_value_on_stack called\n");
  return gdbarch->return_value_on_stack (type);
}
