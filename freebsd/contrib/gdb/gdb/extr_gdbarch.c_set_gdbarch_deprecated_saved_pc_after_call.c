
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_saved_pc_after_call; } ;
typedef int gdbarch_deprecated_saved_pc_after_call_ftype ;



void
set_gdbarch_deprecated_saved_pc_after_call (struct gdbarch *gdbarch,
                                            gdbarch_deprecated_saved_pc_after_call_ftype deprecated_saved_pc_after_call)
{
  gdbarch->deprecated_saved_pc_after_call = deprecated_saved_pc_after_call;
}
