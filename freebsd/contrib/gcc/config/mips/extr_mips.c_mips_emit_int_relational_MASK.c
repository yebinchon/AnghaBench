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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int XOR ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int) ; 

__attribute__((used)) static void
FUNC7 (enum rtx_code code, bool *invert_ptr,
			  rtx target, rtx cmp0, rtx cmp1)
{
  /* First see if there is a MIPS instruction that can do this operation
     with CMP1 in its current form. If not, try to canonicalize the
     comparison to LT. If that fails, try doing the same for the
     inverse operation.  If that also fails, force CMP1 into a register
     and try again.  */
  if (FUNC5 (code, cmp1))
    FUNC4 (code, target, cmp0, cmp1);
  else if (FUNC3 (&code, &cmp1, FUNC0 (target)))
    FUNC4 (code, target, cmp0, cmp1);
  else
    {
      enum rtx_code inv_code = FUNC6 (code);
      if (!FUNC5 (inv_code, cmp1))
	{
	  cmp1 = FUNC1 (FUNC0 (cmp0), cmp1);
	  FUNC7 (code, invert_ptr, target, cmp0, cmp1);
	}
      else if (invert_ptr == 0)
	{
	  rtx inv_target = FUNC2 (FUNC0 (target));
	  FUNC4 (inv_code, inv_target, cmp0, cmp1);
	  FUNC4 (XOR, target, inv_target, const1_rtx);
	}
      else
	{
	  *invert_ptr = !*invert_ptr;
	  FUNC4 (inv_code, target, cmp0, cmp1);
	}
    }
}