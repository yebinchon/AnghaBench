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
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int** hard_regno_nregs ; 
 int /*<<< orphan*/  pseudos_counted ; 
 int* reg_renumber ; 
 int* spill_add_cost ; 
 int* spill_cost ; 
 int /*<<< orphan*/  spilled_pseudos ; 

__attribute__((used)) static void
FUNC5 (int reg)
{
  int freq = FUNC2 (reg);
  int r = reg_renumber[reg];
  int nregs;

  if (FUNC1 (&pseudos_counted, reg)
      || FUNC1 (&spilled_pseudos, reg))
    return;

  FUNC3 (&pseudos_counted, reg);

  FUNC4 (r >= 0);

  spill_add_cost[r] += freq;

  nregs = hard_regno_nregs[r][FUNC0 (reg)];
  while (nregs-- > 0)
    spill_cost[r + nregs] += freq;
}