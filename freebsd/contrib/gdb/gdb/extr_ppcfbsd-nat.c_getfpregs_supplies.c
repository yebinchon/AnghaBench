
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch_tdep {int ppc_fpscr_regnum; } ;


 int FP0_REGNUM ;
 int FPLAST_REGNUM ;
 int current_gdbarch ;
 int gdb_assert (int ) ;
 struct gdbarch_tdep* gdbarch_tdep (int ) ;
 int ppc_floating_point_unit_p (int ) ;

__attribute__((used)) static int
getfpregs_supplies (int regno)
{
  struct gdbarch_tdep *tdep = gdbarch_tdep (current_gdbarch);
  gdb_assert (ppc_floating_point_unit_p (current_gdbarch));

  return ((regno >= FP0_REGNUM && regno <= FPLAST_REGNUM)
   || regno == tdep->ppc_fpscr_regnum);
}
