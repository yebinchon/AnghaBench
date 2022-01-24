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
typedef  int /*<<< orphan*/  REAL_VALUE_TYPE ;

/* Variables and functions */
 scalar_t__ CONST_DOUBLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  dconst0 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (rtx cond)
{
  enum machine_mode mode = FUNC1 (FUNC5 (cond, 0));
  rtx cst = FUNC5 (cond, 1);

  /* We can't perform this optimization if either operand might be or might
     contain a signed zero.  */
  if (FUNC2 (mode))
    {
      /* It is sufficient to check if CST is or contains a zero.  We must
	 handle float, complex, and vector.  If any subpart is a zero, then
	 the optimization can't be performed.  */
      /* ??? The complex and vector checks are not implemented yet.  We just
	 always return zero for them.  */
      if (FUNC0 (cst) == CONST_DOUBLE)
	{
	  REAL_VALUE_TYPE d;
	  FUNC4 (d, cst);
	  if (FUNC3 (d, dconst0))
	    return 0;
	}
      else
	return 0;
    }

  return FUNC6 (cst);
}