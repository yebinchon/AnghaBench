
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int deprecated_reg_struct_has_addr; } ;
typedef int gdbarch_deprecated_reg_struct_has_addr_ftype ;



void
set_gdbarch_deprecated_reg_struct_has_addr (struct gdbarch *gdbarch,
                                            gdbarch_deprecated_reg_struct_has_addr_ftype deprecated_reg_struct_has_addr)
{
  gdbarch->deprecated_reg_struct_has_addr = deprecated_reg_struct_has_addr;
}
