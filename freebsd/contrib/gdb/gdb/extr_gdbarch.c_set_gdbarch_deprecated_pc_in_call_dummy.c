
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_pc_in_call_dummy; } ;
typedef int gdbarch_deprecated_pc_in_call_dummy_ftype ;



void
set_gdbarch_deprecated_pc_in_call_dummy (struct gdbarch *gdbarch,
                                         gdbarch_deprecated_pc_in_call_dummy_ftype deprecated_pc_in_call_dummy)
{
  gdbarch->deprecated_pc_in_call_dummy = deprecated_pc_in_call_dummy;
}
