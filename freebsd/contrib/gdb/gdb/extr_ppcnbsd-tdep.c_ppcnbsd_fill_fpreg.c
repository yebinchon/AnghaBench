
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int ppc_fpscr_regnum; } ;


 int FP0_REGNUM ;
 int FPREG_FPR_OFFSET (int) ;
 int FPREG_FPSCR_OFFSET ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int regcache_collect (int,char*) ;

void
ppcnbsd_fill_fpreg (char *fpregs, int regno)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  int i;

  for (i = FP0_REGNUM; i <= FP0_REGNUM + 31; i++)
    {
      if (regno == i || regno == -1)
 regcache_collect (i, fpregs + FPREG_FPR_OFFSET (i - FP0_REGNUM));
    }

  if (regno == tdep->ppc_fpscr_regnum || regno == -1)
    regcache_collect (tdep->ppc_fpscr_regnum, fpregs + FPREG_FPSCR_OFFSET);
}
