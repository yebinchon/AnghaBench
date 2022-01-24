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
 scalar_t__ DFmode ; 
 scalar_t__ DImode ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int SImode ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_E500_DOUBLE ; 
 scalar_t__ TARGET_SPE ; 

bool
FUNC5 (rtx op, enum machine_mode mode)
{
  if (TARGET_E500_DOUBLE)
    {
      /* Reject (subreg:SI (reg:DF)).  */
      if (FUNC0 (op) == SUBREG
	  && mode == SImode
	  && FUNC2 (FUNC4 (op))
	  && FUNC1 (FUNC4 (op)) == DFmode)
	return true;

      /* Reject (subreg:DF (reg:DI)).  */
      if (FUNC0 (op) == SUBREG
	  && mode == DFmode
	  && FUNC2 (FUNC4 (op))
	  && FUNC1 (FUNC4 (op)) == DImode)
	return true;
    }

  if (TARGET_SPE
      && FUNC0 (op) == SUBREG
      && mode == SImode
      && FUNC2 (FUNC4 (op))
      && FUNC3 (FUNC1 (FUNC4 (op))))
    return true;

  return false;
}