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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5 (rtx dep_insn, rtx insn)
{
  rtx dep_rtx = FUNC1 (dep_insn);
  int i;

  if (FUNC0 (dep_rtx) == SET
      && FUNC4 (dep_rtx, insn))
    return 1;
  else if (FUNC0 (dep_rtx) == PARALLEL)
    {
      for (i = 0; i < FUNC3 (dep_rtx, 0); i++)
	{
	  if (FUNC4 (FUNC2 (dep_rtx, 0, i), insn))
	    return 1;
	}
    }
  return 0;
}