
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int function_start_offset; } ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;

CORE_ADDR
gdbarch_function_start_offset (struct gdbarch *gdbarch)
{
  gdb_assert (gdbarch != ((void*)0));

  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_function_start_offset called\n");
  return gdbarch->function_start_offset;
}
