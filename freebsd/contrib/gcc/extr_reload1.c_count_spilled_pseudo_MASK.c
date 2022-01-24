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

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int** hard_regno_nregs ; 
 int* reg_renumber ; 
 int /*<<< orphan*/ * spill_add_cost ; 
 int /*<<< orphan*/ * spill_cost ; 
 int /*<<< orphan*/  spilled_pseudos ; 

__attribute__((used)) static void
FUNC4 (int spilled, int spilled_nregs, int reg)
{
  int r = reg_renumber[reg];
  int nregs = hard_regno_nregs[r][FUNC0 (reg)];

  if (FUNC1 (&spilled_pseudos, reg)
      || spilled + spilled_nregs <= r || r + nregs <= spilled)
    return;

  FUNC3 (&spilled_pseudos, reg);

  spill_add_cost[r] -= FUNC2 (reg);
  while (nregs-- > 0)
    spill_cost[r + nregs] -= FUNC2 (reg);
}