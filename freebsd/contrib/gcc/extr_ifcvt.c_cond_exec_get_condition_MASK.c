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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
 scalar_t__ NULL_RTX ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int UNKNOWN ; 
 scalar_t__ FUNC4 (scalar_t__,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC9 (rtx jump)
{
  rtx test_if, cond;

  if (FUNC5 (jump))
    test_if = FUNC3 (FUNC7 (jump));
  else
    return NULL_RTX;
  cond = FUNC4 (test_if, 0);

  /* If this branches to JUMP_LABEL when the condition is false,
     reverse the condition.  */
  if (FUNC0 (FUNC4 (test_if, 2)) == LABEL_REF
      && FUNC4 (FUNC4 (test_if, 2), 0) == FUNC2 (jump))
    {
      enum rtx_code rev = FUNC8 (cond, jump);
      if (rev == UNKNOWN)
	return NULL_RTX;

      cond = FUNC6 (rev, FUNC1 (cond), FUNC4 (cond, 0),
			     FUNC4 (cond, 1));
    }

  return cond;
}