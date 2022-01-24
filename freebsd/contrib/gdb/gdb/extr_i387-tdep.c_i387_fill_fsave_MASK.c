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
struct gdbarch_tdep {scalar_t__ st0_regnum; } ;

/* Variables and functions */
 int* FUNC0 (char*,int) ; 
 scalar_t__ I386_ST0_REGNUM ; 
 int I387_FCTRL_REGNUM ; 
 int I387_FIOFF_REGNUM ; 
 int I387_FOOFF_REGNUM ; 
 int I387_FOP_REGNUM ; 
 int I387_ST0_REGNUM ; 
 int I387_XMM0_REGNUM ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct regcache* current_regcache ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct gdbarch_tdep* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct regcache*,int,...) ; 

void
FUNC5 (void *fsave, int regnum)
{
  struct regcache *regcache = current_regcache;
  struct gdbarch_tdep *tdep = FUNC2 (current_gdbarch);
  char *regs = fsave;
  int i;

  FUNC1 (tdep->st0_regnum >= I386_ST0_REGNUM);

  /* Define I387_ST0_REGNUM such that we use the proper definitions
     for REGCACHE's architecture.  */
#define I387_ST0_REGNUM tdep->st0_regnum

  for (i = I387_ST0_REGNUM; i < I387_XMM0_REGNUM; i++)
    if (regnum == -1 || regnum == i)
      {
	/* Most of the FPU control registers occupy only 16 bits in
           the fsave area.  Give those a special treatment.  */
	if (i >= I387_FCTRL_REGNUM
	    && i != I387_FIOFF_REGNUM && i != I387_FOOFF_REGNUM)
	  {
	    unsigned char buf[4];

	    FUNC4 (regcache, i, buf);

	    if (i == I387_FOP_REGNUM)
	      {
		/* The opcode occupies only 11 bits.  Make sure we
                   don't touch the other bits.  */
		buf[1] &= ((1 << 3) - 1);
		buf[1] |= ((FUNC0 (regs, i))[1] & ~((1 << 3) - 1));
	      }
	    FUNC3 (FUNC0 (regs, i), buf, 2);
	  }
	else
	  FUNC4 (regcache, i, FUNC0 (regs, i));
      }
#undef I387_ST0_REGNUM
}