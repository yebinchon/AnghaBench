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
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ LAST_VIRTUAL_REGISTER ; 
 scalar_t__ MODE_CC ; 
 int NUM_MACHINE_MODES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int* can_copy ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static void
FUNC9 (void)
{
  int i;
#ifndef AVOID_CCMODE_COPIES
  rtx reg, insn;
#endif
  FUNC6 (can_copy, 0, NUM_MACHINE_MODES);

  FUNC8 ();
  for (i = 0; i < NUM_MACHINE_MODES; i++)
    if (FUNC0 (i) == MODE_CC)
      {
#ifdef AVOID_CCMODE_COPIES
	can_copy[i] = 0;
#else
	reg = FUNC4 ((enum machine_mode) i, LAST_VIRTUAL_REGISTER + 1);
	insn = FUNC2 (FUNC5 (VOIDmode, reg, reg));
	if (FUNC7 (FUNC1 (insn), insn, NULL) >= 0)
	  can_copy[i] = 1;
#endif
      }
    else
      can_copy[i] = 1;

  FUNC3 ();
}