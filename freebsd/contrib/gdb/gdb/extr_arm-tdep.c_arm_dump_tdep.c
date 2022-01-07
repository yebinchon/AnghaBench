
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct gdbarch_tdep {scalar_t__ lowest_pc; } ;
struct gdbarch {int dummy; } ;


 int fprintf_unfiltered (struct ui_file*,char*,unsigned long) ;
 struct gdbarch_tdep* gdbarch_tdep (struct gdbarch*) ;

__attribute__((used)) static void
arm_dump_tdep (struct gdbarch *current_gdbarch, struct ui_file *file)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  if (tdep == ((void*)0))
    return;

  fprintf_unfiltered (file, "arm_dump_tdep: Lowest pc = 0x%lx",
        (unsigned long) tdep->lowest_pc);
}
