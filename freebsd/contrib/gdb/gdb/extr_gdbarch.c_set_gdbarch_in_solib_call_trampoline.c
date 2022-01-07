
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int in_solib_call_trampoline; } ;
typedef int gdbarch_in_solib_call_trampoline_ftype ;



void
set_gdbarch_in_solib_call_trampoline (struct gdbarch *gdbarch,
                                      gdbarch_in_solib_call_trampoline_ftype in_solib_call_trampoline)
{
  gdbarch->in_solib_call_trampoline = in_solib_call_trampoline;
}
