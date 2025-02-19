
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_call_dummy_breakpoint_offset; } ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;

CORE_ADDR
gdbarch_deprecated_call_dummy_breakpoint_offset (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_call_dummy_breakpoint_offset called\n");
  return gdbarch->deprecated_call_dummy_breakpoint_offset;
}
