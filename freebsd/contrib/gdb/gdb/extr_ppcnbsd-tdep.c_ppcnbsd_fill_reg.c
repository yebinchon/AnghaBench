
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int ppc_lr_regnum; int ppc_cr_regnum; int ppc_xer_regnum; int ppc_ctr_regnum; } ;


 int PC_REGNUM ;
 int REG_CR_OFFSET ;
 int REG_CTR_OFFSET ;
 int REG_FIXREG_OFFSET (int) ;
 int REG_LR_OFFSET ;
 int REG_PC_OFFSET ;
 int REG_XER_OFFSET ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int regcache_collect (int,char*) ;

void
ppcnbsd_fill_reg (char *regs, int regno)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  int i;

  for (i = 0; i <= 31; i++)
    {
      if (regno == i || regno == -1)
 regcache_collect (i, regs + REG_FIXREG_OFFSET (i));
    }

  if (regno == tdep->ppc_lr_regnum || regno == -1)
    regcache_collect (tdep->ppc_lr_regnum, regs + REG_LR_OFFSET);

  if (regno == tdep->ppc_cr_regnum || regno == -1)
    regcache_collect (tdep->ppc_cr_regnum, regs + REG_CR_OFFSET);

  if (regno == tdep->ppc_xer_regnum || regno == -1)
    regcache_collect (tdep->ppc_xer_regnum, regs + REG_XER_OFFSET);

  if (regno == tdep->ppc_ctr_regnum || regno == -1)
    regcache_collect (tdep->ppc_ctr_regnum, regs + REG_CTR_OFFSET);

  if (regno == PC_REGNUM || regno == -1)
    regcache_collect (PC_REGNUM, regs + REG_PC_OFFSET);
}
