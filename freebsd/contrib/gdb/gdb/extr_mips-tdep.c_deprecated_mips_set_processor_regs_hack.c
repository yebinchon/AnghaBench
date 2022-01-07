
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int mips_processor_reg_names; } ;
typedef int CORE_ADDR ;


 int PRID_REGNUM ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int mips_r3041_reg_names ;
 int read_register (int ) ;

void
deprecated_mips_set_processor_regs_hack (void)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  CORE_ADDR prid;

  prid = read_register (PRID_REGNUM);

  if ((prid & ~0xf) == 0x700)
    tdep->mips_processor_reg_names = mips_r3041_reg_names;
}
