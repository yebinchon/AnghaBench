
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* read_pc ) (int ) ;} ;
typedef int ptid_t ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int ) ;

CORE_ADDR
gdbarch_read_pc (struct gdbarch *gdbarch, ptid_t ptid)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->read_pc != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_read_pc called\n");
  return gdbarch->read_pc (ptid);
}
