#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ppc_mq_regnum; int ppc_fpscr_regnum; } ;

/* Variables and functions */
 int BDM_NUM_REGS ; 
 int FP0_REGNUM ; 
 int FPLAST_REGNUM ; 
 int NUM_REGS ; 
 int* bdm_regmap ; 
 int /*<<< orphan*/  current_gdbarch ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC1 (int,int,int*) ; 
 unsigned char* FUNC2 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*) ; 

__attribute__((used)) static void
FUNC4 (int regno)
{
  int i;
  unsigned char *regs, *beginregs, *endregs, *almostregs;
  unsigned char midregs[32];
  unsigned char mqreg[1];
  int first_regno, last_regno;
  int first_bdm_regno, last_bdm_regno;
  int reglen, beginreglen, endreglen;

#if 1
  for (i = 0; i < (FPLAST_REGNUM - FP0_REGNUM + 1); i++)
    {
      midregs[i] = -1;
    }
  mqreg[0] = -1;
#endif

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
      FUNC3 (first_regno, NULL);
      return;			/* Unsupported register */
    }

#if 1
  /* Can't ask for floating point regs on ppc 8xx, also need to
     avoid asking for the mq register. */
  if (first_regno == last_regno)	/* only want one reg */
    {
/*      printf("Asking for register %d\n", first_regno); */

      /* if asking for an invalid register */
      if ((first_regno == FUNC0 (current_gdbarch)->ppc_mq_regnum)
          || (first_regno == FUNC0 (current_gdbarch)->ppc_fpscr_regnum)
	  || ((first_regno >= FP0_REGNUM) && (first_regno <= FPLAST_REGNUM)))
	{
/*          printf("invalid reg request!\n"); */
	  FUNC3 (first_regno, NULL);
	  return;		/* Unsupported register */
	}
      else
	{
	  regs = FUNC1 (first_bdm_regno,
					 last_bdm_regno, &reglen);
	}
    }
  else
    /* want all regs */
    {
/*      printf("Asking for registers %d to %d\n", first_regno, last_regno); */
      beginregs = FUNC1 (first_bdm_regno,
					  FP0_REGNUM - 1, &beginreglen);
      endregs = (FUNC2 (midregs,
			 FUNC1 (FPLAST_REGNUM + 1,
					  last_bdm_regno - 1, &endreglen)));
      almostregs = (FUNC2 (beginregs, endregs));
      regs = (FUNC2 (almostregs, mqreg));
      reglen = beginreglen + 32 + endreglen + 1;
    }

#endif
#if 0
  regs = ocd_read_bdm_registers (first_bdm_regno, last_bdm_regno, &reglen);
#endif

  for (i = first_regno; i <= last_regno; i++)
    {
      int bdm_regno, regoffset;

      bdm_regno = bdm_regmap[i];
      if (bdm_regno != -1)
	{
	  regoffset = bdm_regno - first_bdm_regno;

	  if (regoffset >= reglen / 4)
	    continue;

	  FUNC3 (i, regs + 4 * regoffset);
	}
      else
	FUNC3 (i, NULL);	/* Unsupported register */
    }
}