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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SEQUENCE ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 

__attribute__((used)) static void
FUNC5 (rtx insn, HOST_WIDE_INT *pre,
				   HOST_WIDE_INT *post)
{
  *pre = 0;
  *post = 0;

  if (FUNC0 (FUNC1 (insn)) == SET)
    FUNC4 (FUNC1 (insn), pre, post);
  else if (FUNC0 (FUNC1 (insn)) == PARALLEL
	   || FUNC0 (FUNC1 (insn)) == SEQUENCE)
    {
      int i;

      /* There may be stack adjustments inside compound insns.  Search
	 for them.  */
      for ( i = FUNC3 (FUNC1 (insn), 0) - 1; i >= 0; i--)
	if (FUNC0 (FUNC2 (FUNC1 (insn), 0, i)) == SET)
	  FUNC4 (FUNC2 (FUNC1 (insn), 0, i),
					pre, post);
    }
}