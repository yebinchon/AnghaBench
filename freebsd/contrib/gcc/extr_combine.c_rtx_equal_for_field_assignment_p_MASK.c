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
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC6 (rtx x, rtx y)
{
  if (x == y || FUNC5 (x, y))
    return 1;

  if (x == 0 || y == 0 || FUNC1 (x) != FUNC1 (y))
    return 0;

  /* Check for a paradoxical SUBREG of a MEM compared with the MEM.
     Note that all SUBREGs of MEM are paradoxical; otherwise they
     would have been rewritten.  */
  if (FUNC2 (x) && FUNC0 (y) == SUBREG
      && FUNC2 (FUNC3 (y))
      && FUNC5 (FUNC3 (y),
		      FUNC4 (FUNC1 (FUNC3 (y)), x)))
    return 1;

  if (FUNC2 (y) && FUNC0 (x) == SUBREG
      && FUNC2 (FUNC3 (x))
      && FUNC5 (FUNC3 (x),
		      FUNC4 (FUNC1 (FUNC3 (x)), y)))
    return 1;

  /* We used to see if get_last_value of X and Y were the same but that's
     not correct.  In one direction, we'll cause the assignment to have
     the wrong destination and in the case, we'll import a register into this
     insn that might have already have been dead.   So fail if none of the
     above cases are true.  */
  return 0;
}