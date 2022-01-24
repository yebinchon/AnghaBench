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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
#define  MINUS 129 
#define  PLUS 128 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC4 (rtx rhs)
{
  rtx op0, op1;

  if (FUNC0 (rhs)
      || FUNC2 (rhs))
    return true;

  switch (FUNC1 (rhs))
    {
    case PLUS:
    case MINUS:
      op0 = FUNC3 (rhs, 0);
      op1 = FUNC3 (rhs, 1);
      /* Allow reg + const sets only.  */
      if (FUNC2 (op0) && FUNC0 (op1))
	return true;
      if (FUNC2 (op1) && FUNC0 (op0))
	return true;

      return false;

    default:
      return false;
    }
}