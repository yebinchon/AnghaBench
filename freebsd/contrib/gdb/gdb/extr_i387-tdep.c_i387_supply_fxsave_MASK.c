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
 unsigned char* FUNC0 (char const*,int) ; 
 unsigned char* FUNC1 (char const*) ; 
 scalar_t__ I386_ST0_REGNUM ; 
 int I387_FCTRL_REGNUM ; 
 int I387_FIOFF_REGNUM ; 
 int I387_FOOFF_REGNUM ; 
 int I387_FOP_REGNUM ; 
 int I387_FSTAT_REGNUM ; 
 int I387_FTAG_REGNUM ; 
 int I387_MXCSR_REGNUM ; 
 int I387_ST0_REGNUM ; 
 int I387_XMM0_REGNUM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct gdbarch_tdep* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*) ; 
 int FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct regcache*,int,unsigned char*) ; 

void
FUNC8 (struct regcache *regcache, int regnum, const void *fxsave)
{
  struct gdbarch_tdep *tdep = FUNC3 (FUNC4 (regcache));
  const char *regs = fxsave;
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
	if (regs == NULL)
	  {
	    FUNC7 (regcache, i, NULL);
	    continue;
	  }

	/* Most of the FPU control registers occupy only 16 bits in
	   the fxsave area.  Give those a special treatment.  */
	if (i >= I387_FCTRL_REGNUM && i < I387_XMM0_REGNUM
	    && i != I387_FIOFF_REGNUM && i != I387_FOOFF_REGNUM)
	  {
	    unsigned char val[4];

	    FUNC6 (val, FUNC0 (regs, i), 2);
	    val[2] = val[3] = 0;
	    if (i == I387_FOP_REGNUM)
	      val[1] &= ((1 << 3) - 1);
	    else if (i== I387_FTAG_REGNUM)
	      {
		/* The fxsave area contains a simplified version of
		   the tag word.  We have to look at the actual 80-bit
		   FP data to recreate the traditional i387 tag word.  */

		unsigned long ftag = 0;
		int fpreg;
		int top;

		top = ((FUNC0 (regs, I387_FSTAT_REGNUM))[1] >> 3);
		top &= 0x7;

		for (fpreg = 7; fpreg >= 0; fpreg--)
		  {
		    int tag;

		    if (val[0] & (1 << fpreg))
		      {
			int regnum = (fpreg + 8 - top) % 8 + I387_ST0_REGNUM;
			tag = FUNC5 (FUNC0 (regs, regnum));
		      }
		    else
		      tag = 3;		/* Empty */

		    ftag |= tag << (2 * fpreg);
		  }
		val[0] = ftag & 0xff;
		val[1] = (ftag >> 8) & 0xff;
	      }
	    FUNC7 (regcache, i, val);
	  }
	else
	  FUNC7 (regcache, i, FUNC0 (regs, i));
      }

  if (regnum == I387_MXCSR_REGNUM || regnum == -1)
    {
      if (regs == NULL)
	FUNC7 (regcache, I387_MXCSR_REGNUM, NULL);
      else
	FUNC7 (regcache, I387_MXCSR_REGNUM,
			     FUNC1 (regs));
    }

#undef I387_ST0_REGNUM
#undef I387_NUM_XMM_REGS
}