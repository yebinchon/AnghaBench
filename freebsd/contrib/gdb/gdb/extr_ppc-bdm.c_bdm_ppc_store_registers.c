
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ppc_mq_regnum; int ppc_fpscr_regnum; } ;


 int BDM_NUM_REGS ;
 scalar_t__ DEPRECATED_REGISTER_BYTE (int) ;
 int FP0_REGNUM ;
 int FPLAST_REGNUM ;
 int NUM_REGS ;
 int* bdm_regmap ;
 int current_gdbarch ;
 scalar_t__ deprecated_registers ;
 TYPE_1__* gdbarch_tdep (int ) ;
 int ocd_write_bdm_registers (int,scalar_t__,int) ;

__attribute__((used)) static void
bdm_ppc_store_registers (int regno)
{
  int i;
  int first_regno, last_regno;
  int first_bdm_regno, last_bdm_regno;

  if (regno == -1)
    {
      first_regno = 0;
      last_regno = NUM_REGS - 1;

      first_bdm_regno = 0;
      last_bdm_regno = BDM_NUM_REGS - 1;
    }
  else
    {
      first_regno = regno;
      last_regno = regno;

      first_bdm_regno = bdm_regmap[regno];
      last_bdm_regno = bdm_regmap[regno];
    }

  if (first_bdm_regno == -1)
    return;

  for (i = first_regno; i <= last_regno; i++)
    {
      int bdm_regno;

      bdm_regno = bdm_regmap[i];



      if ((i != gdbarch_tdep (current_gdbarch)->ppc_mq_regnum)
          && (i != gdbarch_tdep (current_gdbarch)->ppc_fpscr_regnum)
          && ((i < FP0_REGNUM) || (i > FPLAST_REGNUM)))
 {

   ocd_write_bdm_registers (bdm_regno, deprecated_registers + DEPRECATED_REGISTER_BYTE (i), 4);
 }






    }
}
