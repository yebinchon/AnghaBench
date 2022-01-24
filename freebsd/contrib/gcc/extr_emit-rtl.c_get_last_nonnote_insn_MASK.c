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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ SEQUENCE ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ last_insn ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

rtx
FUNC7 (void)
{
  rtx insn = last_insn;

  if (insn)
    {
      if (FUNC2 (insn))
	for (insn = FUNC6 (insn);
	     insn && FUNC2 (insn);
	     insn = FUNC6 (insn))
	  continue;
      else
	{
	  if (FUNC1 (insn)
	      && FUNC0 (FUNC3 (insn)) == SEQUENCE)
	    insn = FUNC4 (FUNC3 (insn), 0,
			    FUNC5 (FUNC3 (insn), 0) - 1);
	}
    }

  return insn;
}