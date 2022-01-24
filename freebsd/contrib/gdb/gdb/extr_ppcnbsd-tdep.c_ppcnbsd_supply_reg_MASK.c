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
struct gdbarch_tdep {int ppc_lr_regnum; int ppc_cr_regnum; int ppc_xer_regnum; int ppc_ctr_regnum; } ;

/* Variables and functions */
 int PC_REGNUM ; 
 int REG_CR_OFFSET ; 
 int REG_CTR_OFFSET ; 
 int FUNC0 (int) ; 
 int REG_LR_OFFSET ; 
 int REG_PC_OFFSET ; 
 int REG_XER_OFFSET ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 

void
FUNC3 (char *regs, int regno)
{
  struct gdbarch_tdep *tdep = FUNC1 (current_gdbarch);
  int i;

  for (i = 0; i <= 31; i++)
    {
      if (regno == i || regno == -1)
	FUNC2 (i, regs + FUNC0 (i));
    }

  if (regno == tdep->ppc_lr_regnum || regno == -1)
    FUNC2 (tdep->ppc_lr_regnum, regs + REG_LR_OFFSET);

  if (regno == tdep->ppc_cr_regnum || regno == -1)
    FUNC2 (tdep->ppc_cr_regnum, regs + REG_CR_OFFSET);

  if (regno == tdep->ppc_xer_regnum || regno == -1)
    FUNC2 (tdep->ppc_xer_regnum, regs + REG_XER_OFFSET);

  if (regno == tdep->ppc_ctr_regnum || regno == -1)
    FUNC2 (tdep->ppc_ctr_regnum, regs + REG_CTR_OFFSET);

  if (regno == PC_REGNUM || regno == -1)
    FUNC2 (PC_REGNUM, regs + REG_PC_OFFSET);
}