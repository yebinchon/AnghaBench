
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int ppc_fpscr_regnum; } ;


 int FP0_REGNUM ;
 int FPLAST_REGNUM ;
 int FPREG_FPR_OFFSET (int) ;
 int FPREG_FPSCR_OFFSET ;
 int current_gdbarch ;
 int current_regcache ;
 int gdb_assert (int ) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int ppc_floating_point_unit_p (int ) ;
 int regcache_raw_supply (int ,int,char*) ;

void
ppcfbsd_supply_fpreg (char *fpregs, int regno)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  int i;
  gdb_assert (ppc_floating_point_unit_p (current_gdbarch));

  for (i = FP0_REGNUM; i <= FPLAST_REGNUM; i++)
    {
      if (regno == i || regno == -1)
 regcache_raw_supply (current_regcache, i, fpregs +
        FPREG_FPR_OFFSET (i - FP0_REGNUM));
    }

  if (regno == tdep->ppc_fpscr_regnum || regno == -1)
    regcache_raw_supply (current_regcache, tdep->ppc_fpscr_regnum,
    fpregs + FPREG_FPSCR_OFFSET);
}
