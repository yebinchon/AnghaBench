
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int ppc_gp0_regnum; int ppc_gplast_regnum; int ppc_lr_regnum; int ppc_cr_regnum; int ppc_xer_regnum; int ppc_ctr_regnum; } ;


 int PC_REGNUM ;
 int current_gdbarch ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;

__attribute__((used)) static int
getregs_supplies (int regno)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);

  return ((regno >= tdep->ppc_gp0_regnum && regno <= tdep->ppc_gplast_regnum)
          || regno == tdep->ppc_lr_regnum
          || regno == tdep->ppc_cr_regnum
          || regno == tdep->ppc_xer_regnum
          || regno == tdep->ppc_ctr_regnum
   || regno == PC_REGNUM);
}
