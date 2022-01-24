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
 scalar_t__ CALL ; 
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7 (rtx insn)
{
  rtx pat = FUNC1 (insn);
  int i;

  if (FUNC0 (pat) == SET)
    FUNC6 (pat, insn);
  else if (FUNC0 (pat) == PARALLEL)
    for (i = 0; i < FUNC3 (pat, 0); i++)
      {
	rtx x = FUNC2 (pat, 0, i);

	if (FUNC0 (x) == SET)
	  FUNC6 (x, insn);
	else if (FUNC0 (x) == CLOBBER)
	  FUNC5 (x, insn);
	else if (FUNC0 (x) == CALL)
	  FUNC4 (insn);
      }

  else if (FUNC0 (pat) == CLOBBER)
    FUNC5 (pat, insn);
  else if (FUNC0 (pat) == CALL)
    FUNC4 (insn);
}