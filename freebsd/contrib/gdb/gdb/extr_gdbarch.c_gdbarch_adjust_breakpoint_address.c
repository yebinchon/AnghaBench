
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* adjust_breakpoint_address ) (struct gdbarch*,int ) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct gdbarch*,int ) ;

CORE_ADDR
gdbarch_adjust_breakpoint_address (struct gdbarch *gdbarch, CORE_ADDR bpaddr)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->adjust_breakpoint_address != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_adjust_breakpoint_address called\n");
  return gdbarch->adjust_breakpoint_address (gdbarch, bpaddr);
}
