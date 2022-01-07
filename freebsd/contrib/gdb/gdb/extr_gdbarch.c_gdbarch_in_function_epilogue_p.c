
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* in_function_epilogue_p ) (struct gdbarch*,int ) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct gdbarch*,int ) ;

int
gdbarch_in_function_epilogue_p (struct gdbarch *gdbarch, CORE_ADDR addr)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->in_function_epilogue_p != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_in_function_epilogue_p called\n");
  return gdbarch->in_function_epilogue_p (gdbarch, addr);
}
