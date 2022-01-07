
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int regset_from_core_section; } ;
typedef int gdbarch_regset_from_core_section_ftype ;



void
set_gdbarch_regset_from_core_section (struct gdbarch *gdbarch,
                                      gdbarch_regset_from_core_section_ftype regset_from_core_section)
{
  gdbarch->regset_from_core_section = regset_from_core_section;
}
