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
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_RTX ; 
 scalar_t__ PARALLEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const2_rtx ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pc_rtx ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static rtx
FUNC9 (void)
{
  rtx tmp;
  tmp = FUNC8 (word_mode, 10000);
  tmp = FUNC7 (tmp, tmp, const2_rtx);

  /* If we get something that isn't a simple set, or a
     [(set ..) (clobber ..)], this whole function will go wrong.  */
  if (FUNC0 (tmp) == SET)
    return NULL_RTX;
  else if (FUNC0 (tmp) == PARALLEL)
    {
      int found;

      if (FUNC6 (tmp, 0) != 2)
	return pc_rtx;
      tmp = FUNC5 (tmp, 0, 1);
      if (FUNC0 (tmp) != CLOBBER)
	return pc_rtx;
      tmp = FUNC4 (tmp, 0);

      /* Don't do anything foolish if the md wanted to clobber a
	 scratch or something.  We only care about hard regs.
	 Moreover we don't like the notion of subregs of hard regs.  */
      if (FUNC0 (tmp) == SUBREG
	  && FUNC2 (FUNC3 (tmp))
	  && FUNC1 (FUNC3 (tmp)) < FIRST_PSEUDO_REGISTER)
	return pc_rtx;
      found = (FUNC2 (tmp) && FUNC1 (tmp) < FIRST_PSEUDO_REGISTER);

      return (found ? tmp : NULL_RTX);
    }

  return pc_rtx;
}