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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ SUBREG ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  reload_completed ; 

int
FUNC5 (rtx op, enum machine_mode mode)
{
  rtx inner;

  if (! reload_completed)
    /* Note that no SUBREG is a memory operand before end of reload pass,
       because (SUBREG (MEM...)) forces reloading into a register.  */
    return FUNC2 (op) && FUNC4 (op, mode);

  if (mode != VOIDmode && FUNC1 (op) != mode)
    return 0;

  inner = op;
  if (FUNC0 (inner) == SUBREG)
    inner = FUNC3 (inner);

  return (FUNC2 (inner) && FUNC4 (op, mode));
}