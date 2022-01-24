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
typedef  int rtx ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int FUNC2 (int) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int) ; 

int
FUNC9 (rtx out_insn, rtx in_insn)
{
  rtx out_set, in_set;

  in_set = FUNC8 (in_insn);
  FUNC6 (in_set);

  if (!FUNC1 (FUNC3 (in_set)))
    return false;

  out_set = FUNC8 (out_insn);
  if (out_set)
    {
      if (FUNC7 (FUNC3 (out_set), FUNC3 (in_set)))
	return false;
    }
  else
    {
      rtx out_pat;
      int i;

      out_pat = FUNC2 (out_insn);
      FUNC6 (FUNC0 (out_pat) == PARALLEL);

      for (i = 0; i < FUNC5 (out_pat, 0); i++)
	{
	  rtx exp = FUNC4 (out_pat, 0, i);

	  if (FUNC0 (exp) == CLOBBER)
	    continue;

	  FUNC6 (FUNC0 (exp) == SET);

	  if (FUNC7 (FUNC3 (exp), FUNC3 (in_set)))
	    return false;
	}
    }

  return true;
}