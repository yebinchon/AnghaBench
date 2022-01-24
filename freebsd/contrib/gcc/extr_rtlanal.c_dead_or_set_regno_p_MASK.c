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
 scalar_t__ CLOBBER ; 
 scalar_t__ COND_EXEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REG_DEAD ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

int
FUNC10 (rtx insn, unsigned int test_regno)
{
  rtx pattern;

  /* See if there is a death note for something that includes TEST_REGNO.  */
  if (FUNC9 (insn, REG_DEAD, test_regno))
    return 1;

  if (FUNC0 (insn)
      && FUNC8 (insn, CLOBBER, test_regno))
    return 1;

  pattern = FUNC3 (insn);

  if (FUNC2 (pattern) == COND_EXEC)
    pattern = FUNC1 (pattern);

  if (FUNC2 (pattern) == SET)
    return FUNC7 (FUNC4 (pattern), test_regno);
  else if (FUNC2 (pattern) == PARALLEL)
    {
      int i;

      for (i = FUNC6 (pattern, 0) - 1; i >= 0; i--)
	{
	  rtx body = FUNC5 (pattern, 0, i);

	  if (FUNC2 (body) == COND_EXEC)
	    body = FUNC1 (body);

	  if ((FUNC2 (body) == SET || FUNC2 (body) == CLOBBER)
	      && FUNC7 (FUNC4 (body), test_regno))
	    return 1;
	}
    }

  return 0;
}