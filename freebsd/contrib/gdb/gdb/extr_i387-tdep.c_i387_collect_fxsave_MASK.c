#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct regcache {int dummy; } ;
struct gdbarch_tdep {scalar_t__ st0_regnum; scalar_t__ num_xmm_regs; } ;

/* Variables and functions */
 int* FUNC0 (char*,int) ; 
 int* FUNC1 (char*) ; 
 scalar_t__ I386_ST0_REGNUM ; 
 int I387_FCTRL_REGNUM ; 
 int I387_FIOFF_REGNUM ; 
 int I387_FOOFF_REGNUM ; 
 int I387_FOP_REGNUM ; 
 int I387_FTAG_REGNUM ; 
 int I387_MXCSR_REGNUM ; 
 int I387_ST0_REGNUM ; 
 int I387_XMM0_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct gdbarch_tdep* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regcache const*,int,...) ; 

void
FUNC6 (const struct regcache *regcache, int regnum, void *fxsave)
{
  struct gdbarch_tdep *tdep = FUNC3 (current_gdbarch);
  char *regs = fxsave;
  int i;

  FUNC2 (tdep->st0_regnum >= I386_ST0_REGNUM);
  FUNC2 (tdep->num_xmm_regs > 0);

  /* Define I387_ST0_REGNUM and I387_NUM_XMM_REGS such that we use the
     proper definitions for REGCACHE's architecture.  */

#define I387_ST0_REGNUM	tdep->st0_regnum
#define I387_NUM_XMM_REGS tdep->num_xmm_regs

  for (i = I387_ST0_REGNUM; i < I387_MXCSR_REGNUM; i++)
    if (regnum == -1 || regnum == i)
      {
	/* Most of the FPU control registers occupy only 16 bits in
           the fxsave area.  Give those a special treatment.  */
	if (i >= I387_FCTRL_REGNUM && i < I387_XMM0_REGNUM
	    && i != I387_FIOFF_REGNUM && i != I387_FOOFF_REGNUM)
	  {
	    unsigned char buf[4];

	    FUNC5 (regcache, i, buf);

	    if (i == I387_FOP_REGNUM)
	      {
		/* The opcode occupies only 11 bits.  Make sure we
                   don't touch the other bits.  */
		buf[1] &= ((1 << 3) - 1);
		buf[1] |= ((FUNC0 (regs, i))[1] & ~((1 << 3) - 1));
	      }
	    else if (i == I387_FTAG_REGNUM)
	      {
		/* Converting back is much easier.  */

		unsigned short ftag;
		int fpreg;

		ftag = (buf[1] << 8) | buf[0];
		buf[0] = 0;
		buf[1] = 0;

		for (fpreg = 7; fpreg >= 0; fpreg--)
		  {
		    int tag = (ftag >> (fpreg * 2)) & 3;

		    if (tag != 3)
		      buf[0] |= (1 << fpreg);
		  }
	      }
	    FUNC4 (FUNC0 (regs, i), buf, 2);
	  }
	else
	  FUNC5 (regcache, i, FUNC0 (regs, i));
      }

  if (regnum == I387_MXCSR_REGNUM || regnum == -1)
    FUNC5 (regcache, I387_MXCSR_REGNUM,
			  FUNC1 (regs));

#undef I387_ST0_REGNUM
#undef I387_NUM_XMM_REGS
}