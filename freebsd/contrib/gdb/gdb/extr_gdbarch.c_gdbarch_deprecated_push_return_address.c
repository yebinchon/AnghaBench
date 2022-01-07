
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* deprecated_push_return_address ) (int ,int ) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int ,int ) ;

CORE_ADDR
gdbarch_deprecated_push_return_address (struct gdbarch *gdbarch, CORE_ADDR pc, CORE_ADDR sp)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_push_return_address != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_push_return_address called\n");
  return gdbarch->deprecated_push_return_address (pc, sp);
}
