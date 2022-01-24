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
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ MODE_INT ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ STRICT_LOW_PART ; 
 scalar_t__ SUBREG ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTRACT ; 

__attribute__((used)) static bool
FUNC6 (rtx x, rtx reg)
{
  /* Check that reg is an integer mode register.  */
  if (!FUNC3 (reg) || FUNC2 (FUNC1 (reg)) != MODE_INT)
    return false;

  if (FUNC0 (x) == STRICT_LOW_PART
      || FUNC0 (x) == ZERO_EXTRACT)
    x = FUNC5 (x, 0);

  return FUNC0 (x) == SUBREG
	 && FUNC4 (x) == reg
	 && FUNC2 (FUNC1 (x)) == MODE_INT;
}