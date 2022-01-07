
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int (* deprecated_reg_struct_has_addr ) (int,struct type*) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int,struct type*) ;

int
gdbarch_deprecated_reg_struct_has_addr (struct gdbarch *gdbarch, int gcc_p, struct type *type)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_reg_struct_has_addr != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_reg_struct_has_addr called\n");
  return gdbarch->deprecated_reg_struct_has_addr (gcc_p, type);
}
