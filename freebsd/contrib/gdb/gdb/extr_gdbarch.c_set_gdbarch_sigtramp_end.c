
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int sigtramp_end; } ;
typedef int gdbarch_sigtramp_end_ftype ;



void
set_gdbarch_sigtramp_end (struct gdbarch *gdbarch,
                          gdbarch_sigtramp_end_ftype sigtramp_end)
{
  gdbarch->sigtramp_end = sigtramp_end;
}
