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
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LABEL_REF ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_LABEL ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ USE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pc_rtx ; 

int
FUNC10 (rtx insn)
{
  int i;
  if (FUNC1 (insn))
    {
      rtx pat = FUNC2 (insn);

      if (FUNC9 (insn, REG_LABEL, NULL_RTX))
	return 0;
      else if (FUNC0 (pat) == PARALLEL)
	{
	  int len = FUNC7 (pat, 0);
	  int has_use_labelref = 0;

	  for (i = len - 1; i >= 0; i--)
	    if (FUNC0 (FUNC6 (pat, 0, i)) == USE
		&& (FUNC0 (FUNC5 (FUNC6 (pat, 0, i), 0))
		    == LABEL_REF))
	      has_use_labelref = 1;

	  if (! has_use_labelref)
	    for (i = len - 1; i >= 0; i--)
	      if (FUNC0 (FUNC6 (pat, 0, i)) == SET
		  && FUNC3 (FUNC6 (pat, 0, i)) == pc_rtx
		  && FUNC8 (FUNC4 (FUNC6 (pat, 0, i))))
		return 1;
	}
      else if (FUNC0 (pat) == SET
	       && FUNC3 (pat) == pc_rtx
	       && FUNC8 (FUNC4 (pat)))
	return 1;
    }
  return 0;
}