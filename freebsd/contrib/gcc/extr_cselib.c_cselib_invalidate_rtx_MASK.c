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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTRACT ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stack_pointer_rtx ; 

void
FUNC9 (rtx dest)
{
  while (FUNC0 (dest) == SUBREG
	 || FUNC0 (dest) == ZERO_EXTRACT
	 || FUNC0 (dest) == STRICT_LOW_PART)
    dest = FUNC5 (dest, 0);

  if (FUNC4 (dest))
    FUNC7 (FUNC3 (dest), FUNC1 (dest));
  else if (FUNC2 (dest))
    FUNC6 (dest);

  /* Some machines don't define AUTO_INC_DEC, but they still use push
     instructions.  We need to catch that case here in order to
     invalidate the stack pointer correctly.  Note that invalidating
     the stack pointer is different from invalidating DEST.  */
  if (FUNC8 (dest, FUNC1 (dest)))
    FUNC9 (stack_pointer_rtx);
}