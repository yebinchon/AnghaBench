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
 int FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEM ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 scalar_t__ UNSPEC ; 
 scalar_t__ UNSPEC_PIC_BASE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC6 (rtx insn)
{
  rtx pat = FUNC1 (insn);

  if (FUNC0 (pat) == PARALLEL
      && FUNC0 (FUNC5 (pat, 0, 0)) == SET)
    {
      rtx rhs = FUNC2 (FUNC5 (pat, 0, 0));

      if (FUNC0 (rhs) == UNSPEC
	  && FUNC4 (rhs, 1) == UNSPEC_PIC_BASE)
	return TRUE;

      if (FUNC0 (rhs) == MEM
	  && FUNC0 (FUNC3 (rhs, 0)) == UNSPEC
	  && FUNC4 (FUNC3 (rhs, 0), 1) == UNSPEC_PIC_BASE)
	return TRUE;
    }

  return FALSE;
}