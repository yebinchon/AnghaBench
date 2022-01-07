
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;


 int i386_dwarf_reg_to_regnum ;
 int set_gdbarch_stab_reg_to_regnum (struct gdbarch*,int ) ;

void
i386_elf_init_abi (struct gdbarch_info info, struct gdbarch *gdbarch)
{

  set_gdbarch_stab_reg_to_regnum (gdbarch, i386_dwarf_reg_to_regnum);
}
