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
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 size_t GENERAL_REGS ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  SImode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * fixed_regs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * reg_class_contents ; 
 void* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  target_avail_regs ; 
 int target_pres_cost ; 
 int target_res_regs ; 
 int target_small_cost ; 
 void* target_spill_cost ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9 (void)
{
  rtx seq;
  rtx reg1 = FUNC3 (SImode, FIRST_PSEUDO_REGISTER);
  rtx reg2 = FUNC3 (SImode, FIRST_PSEUDO_REGISTER + 1);
  rtx addr = FUNC3 (Pmode, FIRST_PSEUDO_REGISTER + 2);
  rtx mem = FUNC8 (FUNC4 (SImode, addr));
  unsigned i;

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    if (FUNC0 (reg_class_contents[GENERAL_REGS], i)
	&& !fixed_regs[i])
      target_avail_regs++;

  target_res_regs = 3;

  /* These are really just heuristic values.  */

  FUNC7 ();
  FUNC1 (reg1, reg2);
  seq = FUNC5 ();
  FUNC2 ();
  target_small_cost = FUNC6 (seq);
  target_pres_cost = 2 * target_small_cost;

  FUNC7 ();
  FUNC1 (mem, reg1);
  FUNC1 (reg2, mem);
  seq = FUNC5 ();
  FUNC2 ();
  target_spill_cost = FUNC6 (seq);
}