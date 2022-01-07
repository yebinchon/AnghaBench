
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int dummy; } ;
struct gdbarch {struct gdbarch_tdep* tdep; } ;


 int fprintf_unfiltered (int ,char*) ;
 int gdb_stdlog ;
 int gdbarch_debug ;

struct gdbarch_tdep *
gdbarch_tdep (struct gdbarch *gdbarch)
{
  if (gdbarch_debug >= 2)
    fprintf_unfiltered (gdb_stdlog, "gdbarch_tdep called\n");
  return gdbarch->tdep;
}
