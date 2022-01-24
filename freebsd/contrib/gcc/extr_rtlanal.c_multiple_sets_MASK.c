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
 scalar_t__ PARALLEL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC5 (rtx insn)
{
  int found;
  int i;

  /* INSN must be an insn.  */
  if (! FUNC1 (insn))
    return 0;

  /* Only a PARALLEL can have multiple SETs.  */
  if (FUNC0 (FUNC2 (insn)) == PARALLEL)
    {
      for (i = 0, found = 0; i < FUNC4 (FUNC2 (insn), 0); i++)
	if (FUNC0 (FUNC3 (FUNC2 (insn), 0, i)) == SET)
	  {
	    /* If we have already found a SET, then return now.  */
	    if (found)
	      return 1;
	    else
	      found = 1;
	  }
    }

  /* Either zero or one SET.  */
  return 0;
}