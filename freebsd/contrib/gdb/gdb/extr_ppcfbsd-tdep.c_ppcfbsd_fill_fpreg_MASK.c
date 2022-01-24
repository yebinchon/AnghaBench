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
struct gdbarch_tdep {int ppc_fpscr_regnum; } ;

/* Variables and functions */
 int FP0_REGNUM ; 
 int FPLAST_REGNUM ; 
 int FUNC0 (int) ; 
 int FPREG_FPSCR_OFFSET ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct gdbarch_tdep* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char*) ; 

void
FUNC5 (char *fpregs, int regno)
{
  struct gdbarch_tdep *tdep = FUNC2 (current_gdbarch);
  int i;

  /* FIXME: jimb/2004-05-05: Some PPC variants don't have floating
     point registers.  Traditionally, GDB's register set has still
     listed the floating point registers for such machines, so this
     code is harmless.  However, the new E500 port actually omits the
     floating point registers entirely from the register set --- they
     don't even have register numbers assigned to them.

     It's not clear to me how best to update this code, so this assert
     will alert the first person to encounter the NetBSD/E500
     combination to the problem.  */
  FUNC1 (FUNC3 (current_gdbarch));

  for (i = FP0_REGNUM; i <= FPLAST_REGNUM; i++)
    {
      if (regno == i || regno == -1)
	FUNC4 (current_regcache, i, fpregs +
			      FUNC0 (i - FP0_REGNUM));
    }

  if (regno == tdep->ppc_fpscr_regnum || regno == -1)
    FUNC4 (current_regcache, tdep->ppc_fpscr_regnum,
			  fpregs + FPREG_FPSCR_OFFSET);
}