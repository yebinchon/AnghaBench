
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int (* deprecated_frameless_function_invocation ) (struct frame_info*) ;} ;
struct frame_info {int dummy; } ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_assert (int ) ;
 int gdb_stdlog ;
 int gdbarch_debug ;
 int stub1 (struct frame_info*) ;

int
gdbarch_deprecated_frameless_function_invocation (struct gdbarch *gdbarch, struct frame_info *fi)
{
  gdb_assert (gdbarch != ((void*)0));
  gdb_assert (gdbarch->deprecated_frameless_function_invocation != ((void*)0));
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_deprecated_frameless_function_invocation called\n");
  return gdbarch->deprecated_frameless_function_invocation (fi);
}
