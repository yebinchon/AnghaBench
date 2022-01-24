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
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ MODE_INT ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__,int,scalar_t__*,scalar_t__,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 

__attribute__((used)) static rtx
FUNC12 (rtx jump, rtx *earliest)
{
  rtx cond, set, tmp;
  bool reverse;

  if (! FUNC7 (jump))
    return NULL_RTX;

  set = FUNC10 (jump);

  /* If this branches to JUMP_LABEL when the condition is false,
     reverse the condition.  */
  reverse = (FUNC0 (FUNC6 (FUNC5 (set), 2)) == LABEL_REF
	     && FUNC6 (FUNC6 (FUNC5 (set), 2), 0) == FUNC3 (jump));

  /* If the condition variable is a register and is MODE_INT, accept it.  */

  cond = FUNC6 (FUNC5 (set), 0);
  tmp = FUNC6 (cond, 0);
  if (FUNC4 (tmp) && FUNC2 (FUNC1 (tmp)) == MODE_INT)
    {
      *earliest = jump;

      if (reverse)
	cond = FUNC9 (FUNC11 (FUNC0 (cond)),
			       FUNC1 (cond), tmp, FUNC6 (cond, 1));
      return cond;
    }

  /* Otherwise, fall back on canonicalize_condition to do the dirty
     work of manipulating MODE_CC values and COMPARE rtx codes.  */
  return FUNC8 (jump, cond, reverse, earliest,
				 NULL_RTX, false, true);
}