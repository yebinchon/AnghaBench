
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;
struct gdbarch {int (* deprecated_fix_call_dummy ) (char*,int ,int ,int,struct value**,struct type*,int) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (char*,int ,int ,int,struct value**,struct type*,int) ;

void
gdbarch_deprecated_fix_call_dummy (struct gdbarch *gdbarch, char *dummy, CORE_ADDR pc, CORE_ADDR fun, int nargs, struct value **args, struct type *type, int gcc_p)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_fix_call_dummy != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_fix_call_dummy called\n");
  gdbarch->deprecated_fix_call_dummy (dummy, pc, fun, nargs, args, type, gcc_p);
}
