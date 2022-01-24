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
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ flag_non_call_exceptions ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static bool
FUNC6 (rtx insn, int *counts)
{
  int i;
  if (flag_non_call_exceptions && FUNC4 (FUNC1 (insn)))
    return true;
  else if (FUNC0 (FUNC1 (insn)) == SET)
    return FUNC5 (FUNC1 (insn), insn, counts);
  else if (FUNC0 (FUNC1 (insn)) == PARALLEL)
    {
      for (i = FUNC3 (FUNC1 (insn), 0) - 1; i >= 0; i--)
	{
	  rtx elt = FUNC2 (FUNC1 (insn), 0, i);

	  if (FUNC0 (elt) == SET)
	    {
	      if (FUNC5 (elt, insn, counts))
		return true;
	    }
	  else if (FUNC0 (elt) != CLOBBER && FUNC0 (elt) != USE)
	    return true;
	}
      return false;
    }
  else
    return true;
}