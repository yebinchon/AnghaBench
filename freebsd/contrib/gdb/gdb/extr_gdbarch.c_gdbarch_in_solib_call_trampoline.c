
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* in_solib_call_trampoline ) (int ,char*) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int ,char*) ;

int
gdbarch_in_solib_call_trampoline (struct gdbarch *gdbarch, CORE_ADDR pc, char *name)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->in_solib_call_trampoline != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_in_solib_call_trampoline called\n");
  return gdbarch->in_solib_call_trampoline (pc, name);
}
