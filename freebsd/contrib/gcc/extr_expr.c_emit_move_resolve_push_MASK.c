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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ MINUS ; 
 int /*<<< orphan*/  OPTAB_LIB_WIDEN ; 
 scalar_t__ PLUS ; 
#define  POST_DEC 133 
#define  POST_INC 132 
#define  POST_MODIFY 131 
#define  PRE_DEC 130 
#define  PRE_INC 129 
#define  PRE_MODIFY 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ FUNC5 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ stack_pointer_rtx ; 

__attribute__((used)) static rtx
FUNC12 (enum machine_mode mode, rtx x)
{
  enum rtx_code code = FUNC1 (FUNC5 (x, 0));
  HOST_WIDE_INT adjust;
  rtx temp;

  adjust = FUNC2 (mode);
#ifdef PUSH_ROUNDING
  adjust = PUSH_ROUNDING (adjust);
#endif
  if (code == PRE_DEC || code == POST_DEC)
    adjust = -adjust;
  else if (code == PRE_MODIFY || code == POST_MODIFY)
    {
      rtx expr = FUNC5 (FUNC5 (x, 0), 1);
      HOST_WIDE_INT val;

      FUNC8 (FUNC1 (expr) == PLUS || FUNC1 (expr) == MINUS);
      FUNC8 (FUNC1 (FUNC5 (expr, 1)) == CONST_INT);
      val = FUNC3 (FUNC5 (expr, 1));
      if (FUNC1 (expr) == MINUS)
	val = -val;
      FUNC8 (adjust == val || adjust == -val);
      adjust = val;
    }

  /* Do not use anti_adjust_stack, since we don't want to update
     stack_pointer_delta.  */
  temp = FUNC7 (Pmode, PLUS, stack_pointer_rtx,
			      FUNC0 (adjust), stack_pointer_rtx,
			      0, OPTAB_LIB_WIDEN);
  if (temp != stack_pointer_rtx)
    FUNC6 (stack_pointer_rtx, temp);

  switch (code)
    {
    case PRE_INC:
    case PRE_DEC:
    case PRE_MODIFY:
      temp = stack_pointer_rtx;
      break;
    case POST_INC:
    case POST_DEC:
    case POST_MODIFY:
      temp = FUNC10 (stack_pointer_rtx, -adjust);
      break;
    default:
      FUNC9 ();
    }

  return FUNC11 (x, temp);
}