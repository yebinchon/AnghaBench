
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int use_struct_convention; } ;
typedef int gdbarch_use_struct_convention_ftype ;



void
set_gdbarch_use_struct_convention (struct gdbarch *gdbarch,
                                   gdbarch_use_struct_convention_ftype use_struct_convention)
{
  gdbarch->use_struct_convention = use_struct_convention;
}
