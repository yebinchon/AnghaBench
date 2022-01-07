
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int sigtramp_start; } ;
typedef int gdbarch_sigtramp_start_ftype ;



void
set_gdbarch_sigtramp_start (struct gdbarch *gdbarch,
                            gdbarch_sigtramp_start_ftype sigtramp_start)
{
  gdbarch->sigtramp_start = sigtramp_start;
}
