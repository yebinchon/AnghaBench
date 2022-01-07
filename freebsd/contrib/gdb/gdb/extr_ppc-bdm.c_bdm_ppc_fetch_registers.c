
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ppc_mq_regnum; int ppc_fpscr_regnum; } ;


 int BDM_NUM_REGS ;
 int FP0_REGNUM ;
 int FPLAST_REGNUM ;
 int NUM_REGS ;
 int* bdm_regmap ;
 int current_gdbarch ;
 TYPE_1__* gdbarch_tdep (int ) ;
 unsigned char* ocd_read_bdm_registers (int,int,int*) ;
 unsigned char* strcat (unsigned char*,unsigned char*) ;
 int supply_register (int,unsigned char*) ;

__attribute__((used)) static void
bdm_ppc_fetch_registers (int regno)
{
  int i;
  unsigned char *regs, *beginregs, *endregs, *almostregs;
  unsigned char midregs[32];
  unsigned char mqreg[1];
  int first_regno, last_regno;
  int first_bdm_regno, last_bdm_regno;
  int reglen, beginreglen, endreglen;


  for (i = 0; i < (FPLAST_REGNUM - FP0_REGNUM + 1); i++)
    {
      midregs[i] = -1;
    }
  mqreg[0] = -1;


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
    {
      supply_register (first_regno, ((void*)0));
      return;
    }




  if (first_regno == last_regno)
    {



      if ((first_regno == gdbarch_tdep (current_gdbarch)->ppc_mq_regnum)
          || (first_regno == gdbarch_tdep (current_gdbarch)->ppc_fpscr_regnum)
   || ((first_regno >= FP0_REGNUM) && (first_regno <= FPLAST_REGNUM)))
 {

   supply_register (first_regno, ((void*)0));
   return;
 }
      else
 {
   regs = ocd_read_bdm_registers (first_bdm_regno,
      last_bdm_regno, &reglen);
 }
    }
  else

    {

      beginregs = ocd_read_bdm_registers (first_bdm_regno,
       FP0_REGNUM - 1, &beginreglen);
      endregs = (strcat (midregs,
    ocd_read_bdm_registers (FPLAST_REGNUM + 1,
       last_bdm_regno - 1, &endreglen)));
      almostregs = (strcat (beginregs, endregs));
      regs = (strcat (almostregs, mqreg));
      reglen = beginreglen + 32 + endreglen + 1;
    }






  for (i = first_regno; i <= last_regno; i++)
    {
      int bdm_regno, regoffset;

      bdm_regno = bdm_regmap[i];
      if (bdm_regno != -1)
 {
   regoffset = bdm_regno - first_bdm_regno;

   if (regoffset >= reglen / 4)
     continue;

   supply_register (i, regs + 4 * regoffset);
 }
      else
 supply_register (i, ((void*)0));
    }
}
