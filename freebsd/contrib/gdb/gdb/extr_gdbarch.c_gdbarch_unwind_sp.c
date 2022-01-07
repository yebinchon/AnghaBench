
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* unwind_sp ) (struct gdbarch*,struct frame_info*) ;} ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct gdbarch*,struct frame_info*) ;

CORE_ADDR
gdbarch_unwind_sp (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->unwind_sp != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_unwind_sp called\n");
  return gdbarch->unwind_sp (gdbarch, next_frame);
}
