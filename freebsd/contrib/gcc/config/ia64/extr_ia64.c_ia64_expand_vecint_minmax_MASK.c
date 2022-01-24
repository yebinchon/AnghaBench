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
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int GT ; 
 int GTU ; 
 int LT ; 
 int LTU ; 
#define  SMAX 131 
#define  SMIN 130 
#define  UMAX 129 
#define  UMIN 128 
 int V4HImode ; 
 int V8QImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

bool
FUNC8 (enum rtx_code code, enum machine_mode mode,
			   rtx operands[])
{
  rtx xops[6];

  /* These four combinations are supported directly.  */
  if (mode == V8QImode && (code == UMIN || code == UMAX))
    return false;
  if (mode == V4HImode && (code == SMIN || code == SMAX))
    return false;

  /* This combination can be implemented with only saturating subtraction.  */
  if (mode == V4HImode && code == UMAX)
    {
      rtx x, tmp = FUNC3 (mode);

      x = FUNC5 (mode, operands[1], operands[2]);
      FUNC0 (FUNC4 (VOIDmode, tmp, x));

      FUNC0 (FUNC2 (operands[0], tmp, operands[2]));
      return true;
    }

  /* Everything else implemented via vector comparisons.  */
  xops[0] = operands[0];
  xops[4] = xops[1] = operands[1];
  xops[5] = xops[2] = operands[2];

  switch (code)
    {
    case UMIN:
      code = LTU;
      break;
    case UMAX:
      code = GTU;
      break;
    case SMIN:
      code = LT;
      break;
    case SMAX:
      code = GT;
      break;
    default:
      FUNC1 ();
    }
  xops[3] = FUNC6 (code, VOIDmode, operands[1], operands[2]);

  FUNC7 (xops);
  return true;
}