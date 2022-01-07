
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int have_nonsteppable_watchpoint; } ;



void
set_gdbarch_have_nonsteppable_watchpoint (struct gdbarch *gdbarch,
                                          int have_nonsteppable_watchpoint)
{
  gdbarch->have_nonsteppable_watchpoint = have_nonsteppable_watchpoint;
}
