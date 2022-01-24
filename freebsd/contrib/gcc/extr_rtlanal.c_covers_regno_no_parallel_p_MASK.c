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
 unsigned int FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (size_t) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 unsigned int** hard_regno_nregs ; 

__attribute__((used)) static bool
FUNC6 (rtx dest, unsigned int test_regno)
{
  unsigned int regno, endregno;

  if (FUNC0 (dest) == SUBREG
      && (((FUNC2 (FUNC1 (dest))
	    + UNITS_PER_WORD - 1) / UNITS_PER_WORD)
	  == ((FUNC2 (FUNC1 (FUNC5 (dest)))
	       + UNITS_PER_WORD - 1) / UNITS_PER_WORD)))
    dest = FUNC5 (dest);

  if (!FUNC4 (dest))
    return false;

  regno = FUNC3 (dest);
  endregno = (regno >= FIRST_PSEUDO_REGISTER ? regno + 1
	      : regno + hard_regno_nregs[regno][FUNC1 (dest)]);
  return (test_regno >= regno && test_regno < endregno);
}