
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* get_longjmp_target ) (int *) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int *) ;

int
gdbarch_get_longjmp_target (struct gdbarch *gdbarch, CORE_ADDR *pc)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->get_longjmp_target != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_get_longjmp_target called\n");
  return gdbarch->get_longjmp_target (pc);
}
