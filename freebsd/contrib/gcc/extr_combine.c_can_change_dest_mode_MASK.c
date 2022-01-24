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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 unsigned int FIRST_PSEUDO_REGISTER ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (unsigned int,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__** hard_regno_nregs ; 

__attribute__((used)) static bool
FUNC6 (rtx x, int added_sets, enum machine_mode mode)
{
  unsigned int regno;

  if (!FUNC4(x))
    return false;

  regno = FUNC2 (x);
  /* Allow hard registers if the new mode is legal, and occupies no more
     registers than the old mode.  */
  if (regno < FIRST_PSEUDO_REGISTER)
    return (FUNC1 (regno, mode)
	    && (hard_regno_nregs[regno][FUNC0 (x)]
		>= hard_regno_nregs[regno][mode]));

  /* Or a pseudo that is only used once.  */
  return (FUNC3 (regno) == 1 && !added_sets
	  && !FUNC5 (x));
}