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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  GE ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  NO_DEFER_POP ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  OK_DEFER_POP ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (int,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC10 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_trapv ; 
 scalar_t__ FUNC11 () ; 
 scalar_t__ FUNC12 (int) ; 
 int /*<<< orphan*/  neg_optab ; 
 int /*<<< orphan*/  negv_optab ; 

rtx
FUNC13 (enum machine_mode mode, rtx op0, rtx target,
	    int result_unsignedp, int safe)
{
  rtx temp, op1;

  if (! flag_trapv)
    result_unsignedp = 1;

  temp = FUNC9 (mode, op0, target, result_unsignedp);
  if (temp != 0)
    return temp;

  /* If that does not win, use conditional jump and negate.  */

  /* It is safe to use the target if it is the same
     as the source if this is also a pseudo register */
  if (op0 == target && FUNC5 (op0)
      && FUNC4 (op0) >= FIRST_PSEUDO_REGISTER)
    safe = 1;

  op1 = FUNC11 ();
  if (target == 0 || ! safe
      || FUNC1 (target) != mode
      || (FUNC2 (target) && FUNC3 (target))
      || (FUNC5 (target)
	  && FUNC4 (target) < FIRST_PSEUDO_REGISTER))
    target = FUNC12 (mode);

  FUNC8 (target, op0);
  NO_DEFER_POP;

  FUNC6 (target, FUNC0 (mode), GE, 0, mode,
			   NULL_RTX, NULL_RTX, op1);

  op0 = FUNC10 (mode, result_unsignedp ? neg_optab : negv_optab,
                     target, target, 0);
  if (op0 != target)
    FUNC8 (target, op0);
  FUNC7 (op1);
  OK_DEFER_POP;
  return target;
}