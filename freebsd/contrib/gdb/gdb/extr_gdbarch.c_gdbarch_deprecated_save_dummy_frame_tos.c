
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* deprecated_save_dummy_frame_tos ) (int ) ;} ;
typedef int CORE_ADDR ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (int ) ;

void
gdbarch_deprecated_save_dummy_frame_tos (struct gdbarch *gdbarch, CORE_ADDR sp)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_save_dummy_frame_tos != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_save_dummy_frame_tos called\n");
  gdbarch->deprecated_save_dummy_frame_tos (sp);
}
