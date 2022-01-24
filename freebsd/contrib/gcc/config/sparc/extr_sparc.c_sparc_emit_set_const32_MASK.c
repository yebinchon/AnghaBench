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
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ reload_completed ; 
 scalar_t__ reload_in_progress ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 

void
FUNC13 (rtx op0, rtx op1)
{
  enum machine_mode mode = FUNC2 (op0);
  rtx temp;

  if (reload_in_progress || reload_completed)
    temp = op0;
  else
    temp = FUNC7 (mode);

  if (FUNC1 (op1) == CONST_INT)
    {
      FUNC6 (!FUNC12 (op1, mode)
		  && !FUNC4 (op1, mode));

      /* Emit them as real moves instead of a HIGH/LO_SUM,
	 this way CSE can see everything and reuse intermediate
	 values if it wants.  */
      FUNC5 (FUNC11 (VOIDmode, temp,
			      FUNC0 (FUNC3 (op1)
			        & ~(HOST_WIDE_INT)0x3ff)));

      FUNC5 (FUNC11 (VOIDmode,
			      op0,
			      FUNC9 (mode, temp,
					   FUNC0 (FUNC3 (op1) & 0x3ff))));
    }
  else
    {
      /* A symbol, emit in the traditional way.  */
      FUNC5 (FUNC11 (VOIDmode, temp,
			      FUNC8 (mode, op1)));
      FUNC5 (FUNC11 (VOIDmode,
			      op0, FUNC10 (mode, temp, op1)));
    }
}