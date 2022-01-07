
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int unwind_pc; } ;
typedef int gdbarch_unwind_pc_ftype ;



void
set_gdbarch_unwind_pc (struct gdbarch *gdbarch,
                       gdbarch_unwind_pc_ftype unwind_pc)
{
  gdbarch->unwind_pc = unwind_pc;
}
