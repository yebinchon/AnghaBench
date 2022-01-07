
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int pc_in_sigtramp; } ;
typedef int gdbarch_pc_in_sigtramp_ftype ;



void
set_gdbarch_pc_in_sigtramp (struct gdbarch *gdbarch,
                            gdbarch_pc_in_sigtramp_ftype pc_in_sigtramp)
{
  gdbarch->pc_in_sigtramp = pc_in_sigtramp;
}
