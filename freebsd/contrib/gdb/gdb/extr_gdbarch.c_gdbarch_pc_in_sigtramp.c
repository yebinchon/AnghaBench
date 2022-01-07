
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* pc_in_sigtramp ) (int ,char*) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int ,char*) ;

int
gdbarch_pc_in_sigtramp (struct gdbarch *gdbarch, CORE_ADDR pc, char *name)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->pc_in_sigtramp != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_pc_in_sigtramp called\n");
  return gdbarch->pc_in_sigtramp (pc, name);
}
