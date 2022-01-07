
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {struct type* (* register_type ) (struct gdbarch*,int) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 struct type* stub1 (struct gdbarch*,int) ;

struct type *
gdbarch_register_type (struct gdbarch *gdbarch, int reg_nr)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->register_type != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_register_type called\n");
  return gdbarch->register_type (gdbarch, reg_nr);
}
