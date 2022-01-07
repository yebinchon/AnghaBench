
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_dummy_write_sp; } ;
typedef int gdbarch_deprecated_dummy_write_sp_ftype ;



void
set_gdbarch_deprecated_dummy_write_sp (struct gdbarch *gdbarch,
                                       gdbarch_deprecated_dummy_write_sp_ftype deprecated_dummy_write_sp)
{
  gdbarch->deprecated_dummy_write_sp = deprecated_dummy_write_sp;
}
