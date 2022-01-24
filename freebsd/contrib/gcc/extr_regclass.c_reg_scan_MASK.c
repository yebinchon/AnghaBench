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
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TV_REG_SCAN ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int max_parallel ; 
 scalar_t__ max_set_parallel ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

void
FUNC10 (rtx f, unsigned int nregs)
{
  rtx insn;

  FUNC9 (TV_REG_SCAN);

  FUNC6 (nregs, TRUE, FALSE);
  max_parallel = 3;
  max_set_parallel = 0;

  for (insn = f; insn; insn = FUNC2 (insn))
    if (FUNC1 (insn))
      {
	rtx pat = FUNC3 (insn);
	if (FUNC0 (pat) == PARALLEL
	    && FUNC5 (pat, 0) > max_parallel)
	  max_parallel = FUNC5 (pat, 0);
	FUNC7 (pat, insn, 0);

	if (FUNC4 (insn))
	  FUNC7 (FUNC4 (insn), insn, 1);
      }

  max_parallel += max_set_parallel;

  FUNC8 (TV_REG_SCAN);
}