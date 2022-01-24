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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ PLUS ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int UNITS_PER_WORD ; 
 scalar_t__** hard_regno_nregs ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (rtx x, enum machine_mode mode, int output)
{
  rtx inner;

  /* Only SUBREGs are problematical.  */
  if (FUNC1 (x) != SUBREG)
    return 0;

  inner = FUNC7 (x);

  /* If INNER is a constant or PLUS, then INNER must be reloaded.  */
  if (FUNC0 (inner) || FUNC1 (inner) == PLUS)
    return 1;

  /* If INNER is not a hard register, then INNER will not need to
     be reloaded.  */
  if (!FUNC6 (inner)
      || FUNC5 (inner) >= FIRST_PSEUDO_REGISTER)
    return 0;

  /* If INNER is not ok for MODE, then INNER will need reloading.  */
  if (! FUNC4 (FUNC8 (x), mode))
    return 1;

  /* If the outer part is a word or smaller, INNER larger than a
     word and the number of regs for INNER is not the same as the
     number of words in INNER, then INNER will need reloading.  */
  return (FUNC3 (mode) <= UNITS_PER_WORD
	  && output
	  && FUNC3 (FUNC2 (inner)) > UNITS_PER_WORD
	  && ((FUNC3 (FUNC2 (inner)) / UNITS_PER_WORD)
	      != (int) hard_regno_nregs[FUNC5 (inner)][FUNC2 (inner)]));
}