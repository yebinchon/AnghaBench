
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int cannot_step_breakpoint; } ;



void
set_gdbarch_cannot_step_breakpoint (struct gdbarch *gdbarch,
                                    int cannot_step_breakpoint)
{
  gdbarch->cannot_step_breakpoint = cannot_step_breakpoint;
}
