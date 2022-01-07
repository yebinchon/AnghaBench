
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct type {int dummy; } ;
struct gdbarch {int (* deprecated_register_convert_to_raw ) (struct type*,int,char const*,char*) ;} ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct type*,int,char const*,char*) ;

void
gdbarch_deprecated_register_convert_to_raw (struct gdbarch *gdbarch, struct type *type, int regnum, const char *from, char *to)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_register_convert_to_raw != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_register_convert_to_raw called\n");
  gdbarch->deprecated_register_convert_to_raw (type, regnum, from, to);
}
