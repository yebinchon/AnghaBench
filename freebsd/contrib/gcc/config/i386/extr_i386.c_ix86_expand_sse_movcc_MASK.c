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
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (int,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ optimize ; 

__attribute__((used)) static void
FUNC9 (rtx dest, rtx cmp, rtx op_true, rtx op_false)
{
  enum machine_mode mode = FUNC1 (dest);
  rtx t2, t3, x;

  if (op_false == FUNC0 (mode))
    {
      op_true = FUNC3 (mode, op_true);
      x = FUNC5 (mode, cmp, op_true);
      FUNC2 (FUNC8 (VOIDmode, dest, x));
    }
  else if (op_true == FUNC0 (mode))
    {
      op_false = FUNC3 (mode, op_false);
      x = FUNC7 (mode, cmp);
      x = FUNC5 (mode, x, op_false);
      FUNC2 (FUNC8 (VOIDmode, dest, x));
    }
  else
    {
      op_true = FUNC3 (mode, op_true);
      op_false = FUNC3 (mode, op_false);

      t2 = FUNC4 (mode);
      if (optimize)
	t3 = FUNC4 (mode);
      else
	t3 = dest;

      x = FUNC5 (mode, op_true, cmp);
      FUNC2 (FUNC8 (VOIDmode, t2, x));

      x = FUNC7 (mode, cmp);
      x = FUNC5 (mode, x, op_false);
      FUNC2 (FUNC8 (VOIDmode, t3, x));

      x = FUNC6 (mode, t3, t2);
      FUNC2 (FUNC8 (VOIDmode, dest, x));
    }
}