
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* deprecated_init_frame_pc ) (int,struct frame_info*) ;} ;
struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int,struct frame_info*) ;

CORE_ADDR
gdbarch_deprecated_init_frame_pc (struct gdbarch *gdbarch, int fromleaf, struct frame_info *prev)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_init_frame_pc != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_init_frame_pc called\n");
  return gdbarch->deprecated_init_frame_pc (fromleaf, prev);
}
