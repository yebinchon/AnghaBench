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
 scalar_t__ ATYPE_AGEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ INSN ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ REG ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPE_LA ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC12 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC14 (rtx dep_rtx, rtx insn)
{
  rtx target, pat;

  if (FUNC0 (dep_rtx) == INSN)
      dep_rtx = FUNC1 (dep_rtx);

  if (FUNC0 (dep_rtx) == SET)
    {
      target = FUNC3 (dep_rtx);
      if (FUNC0 (target) == STRICT_LOW_PART)
	target = FUNC6 (target, 0);
      while (FUNC0 (target) == SUBREG)
	target = FUNC5 (target);

      if (FUNC0 (target) == REG)
	{
	  int regno = FUNC2 (target);

	  if (FUNC13 (insn) == TYPE_LA)
	    {
	      pat = FUNC1 (insn);
	      if (FUNC0 (pat) == PARALLEL)
		{
		  FUNC9 (FUNC8 (pat, 0) == 2);
		  pat = FUNC7 (pat, 0, 0);
		}
	      FUNC9 (FUNC0 (pat) == SET);
	      return FUNC11 (regno, regno+1, FUNC4 (pat), 0);
	    }
	  else if (FUNC10 (insn) == ATYPE_AGEN)
	    return FUNC12 (regno, FUNC1 (insn));
	}
    }
  return false;
}