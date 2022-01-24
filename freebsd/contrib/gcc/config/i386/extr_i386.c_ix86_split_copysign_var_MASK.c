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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void
FUNC12 (rtx operands[])
{
  enum machine_mode mode, vmode;
  rtx dest, scratch, op0, op1, mask, nmask, x;

  dest = operands[0];
  scratch = operands[1];
  op0 = operands[2];
  op1 = operands[3];
  nmask = operands[4];
  mask = operands[5];

  mode = FUNC0 (dest);
  vmode = FUNC0 (mask);

  if (FUNC10 (op0, op1))
    {
      /* Shouldn't happen often (it's useless, obviously), but when it does
	 we'd generate incorrect code if we continue below.  */
      FUNC4 (dest, op0);
      return;
    }

  if (FUNC2 (mask) && FUNC1 (dest) == FUNC1 (mask))	/* alternative 0 */
    {
      FUNC5 (FUNC1 (op1) == FUNC1 (scratch));

      x = FUNC6 (vmode, scratch, mask);
      FUNC3 (FUNC9 (VOIDmode, scratch, x));

      dest = mask;
      op0 = FUNC11 (vmode, op0, mode, 0);
      x = FUNC8 (vmode, dest);
      x = FUNC6 (vmode, x, op0);
      FUNC3 (FUNC9 (VOIDmode, dest, x));
    }
  else
    {
      if (FUNC1 (op1) == FUNC1 (scratch))		/* alternative 1,3 */
	{
	  x = FUNC6 (vmode, scratch, mask);
	}
      else						/* alternative 2,4 */
	{
          FUNC5 (FUNC1 (mask) == FUNC1 (scratch));
          op1 = FUNC11 (vmode, op1, mode, 0);
	  x = FUNC6 (vmode, scratch, op1);
	}
      FUNC3 (FUNC9 (VOIDmode, scratch, x));

      if (FUNC1 (op0) == FUNC1 (dest))			/* alternative 1,2 */
	{
	  dest = FUNC11 (vmode, op0, mode, 0);
	  x = FUNC6 (vmode, dest, nmask);
	}
      else						/* alternative 3,4 */
	{
          FUNC5 (FUNC1 (nmask) == FUNC1 (dest));
	  dest = nmask;
	  op0 = FUNC11 (vmode, op0, mode, 0);
	  x = FUNC6 (vmode, dest, op0);
	}
      FUNC3 (FUNC9 (VOIDmode, dest, x));
    }

  x = FUNC7 (vmode, dest, scratch);
  FUNC3 (FUNC9 (VOIDmode, dest, x));
}