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
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int,scalar_t__,int,int /*<<< orphan*/ ) ; 

void
FUNC7 (rtx operands[])
{
  enum machine_mode mode, vmode;
  rtx dest, op0, op1, mask, x;

  dest = operands[0];
  op0 = operands[1];
  op1 = operands[2];
  mask = operands[3];

  mode = FUNC1 (dest);
  vmode = FUNC1 (mask);

  dest = FUNC6 (vmode, dest, mode, 0);
  x = FUNC3 (vmode, dest, mask);
  FUNC2 (FUNC5 (VOIDmode, dest, x));

  if (op0 != FUNC0 (vmode))
    {
      x = FUNC4 (vmode, dest, op0);
      FUNC2 (FUNC5 (VOIDmode, dest, x));
    }
}