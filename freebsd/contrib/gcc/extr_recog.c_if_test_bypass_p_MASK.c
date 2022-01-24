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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ IF_THEN_ELSE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 

int
FUNC12 (rtx out_insn, rtx in_insn)
{
  rtx out_set, in_set;

  in_set = FUNC11 (in_insn);
  if (! in_set)
    {
      FUNC9 (FUNC2 (in_insn) || FUNC0 (in_insn));
      return false;
    }

  if (FUNC1 (FUNC5 (in_set)) != IF_THEN_ELSE)
    return false;
  in_set = FUNC5 (in_set);

  out_set = FUNC11 (out_insn);
  if (out_set)
    {
      if (FUNC10 (FUNC4 (out_set), FUNC6 (in_set, 1))
	  || FUNC10 (FUNC4 (out_set), FUNC6 (in_set, 2)))
	return false;
    }
  else
    {
      rtx out_pat;
      int i;

      out_pat = FUNC3 (out_insn);
      FUNC9 (FUNC1 (out_pat) == PARALLEL);

      for (i = 0; i < FUNC8 (out_pat, 0); i++)
	{
	  rtx exp = FUNC7 (out_pat, 0, i);

	  if (FUNC1 (exp) == CLOBBER)
	    continue;

	  FUNC9 (FUNC1 (exp) == SET);

	  if (FUNC10 (FUNC4 (out_set), FUNC6 (in_set, 1))
	      || FUNC10 (FUNC4 (out_set), FUNC6 (in_set, 2)))
	    return false;
	}
    }

  return true;
}