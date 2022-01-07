
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int (* use_struct_convention ) (int,struct type*) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int,struct type*) ;

int
gdbarch_use_struct_convention (struct gdbarch *gdbarch, int gcc_p, struct type *value_type)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->use_struct_convention != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_use_struct_convention called\n");
  return gdbarch->use_struct_convention (gcc_p, value_type);
}
