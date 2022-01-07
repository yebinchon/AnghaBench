
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {scalar_t__ sigtramp_start; scalar_t__ sigtramp_end; } ;
typedef scalar_t__ CORE_ADDR ;


 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;

int
i386bsd_pc_in_sigtramp (CORE_ADDR pc, char *name)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  return (pc >= tdep->sigtramp_start && pc < tdep->sigtramp_end);
}
