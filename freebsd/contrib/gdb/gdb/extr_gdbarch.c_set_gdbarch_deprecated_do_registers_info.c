
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_do_registers_info; } ;
typedef int gdbarch_deprecated_do_registers_info_ftype ;



void
set_gdbarch_deprecated_do_registers_info (struct gdbarch *gdbarch,
                                          gdbarch_deprecated_do_registers_info_ftype deprecated_do_registers_info)
{
  gdbarch->deprecated_do_registers_info = deprecated_do_registers_info;
}
