
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {struct frame_id (* unwind_dummy_id ) (struct gdbarch*,struct frame_info*) ;} ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 struct frame_id stub1 (struct gdbarch*,struct frame_info*) ;

struct frame_id
gdbarch_unwind_dummy_id (struct gdbarch *gdbarch, struct frame_info *info)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->unwind_dummy_id != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_unwind_dummy_id called\n");
  return gdbarch->unwind_dummy_id (gdbarch, info);
}
