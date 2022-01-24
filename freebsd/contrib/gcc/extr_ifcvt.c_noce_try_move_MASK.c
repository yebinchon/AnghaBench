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
struct noce_if_info {int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; int /*<<< orphan*/  x; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  cond; } ;
typedef  int /*<<< orphan*/  rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int EQ ; 
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int NE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static int
FUNC11 (struct noce_if_info *if_info)
{
  rtx cond = if_info->cond;
  enum rtx_code code = FUNC0 (cond);
  rtx y, seq;

  if (code != NE && code != EQ)
    return FALSE;

  /* This optimization isn't valid if either A or B could be a NaN
     or a signed zero.  */
  if (FUNC2 (FUNC1 (if_info->x))
      || FUNC3 (FUNC1 (if_info->x)))
    return FALSE;

  /* Check whether the operands of the comparison are A and in
     either order.  */
  if ((FUNC9 (if_info->a, FUNC5 (cond, 0))
       && FUNC9 (if_info->b, FUNC5 (cond, 1)))
      || (FUNC9 (if_info->a, FUNC5 (cond, 1))
	  && FUNC9 (if_info->b, FUNC5 (cond, 0))))
    {
      y = (code == EQ) ? if_info->a : if_info->b;

      /* Avoid generating the move if the source is the destination.  */
      if (! FUNC9 (if_info->x, y))
	{
	  FUNC10 ();
	  FUNC8 (if_info->x, y);
	  seq = FUNC7 (if_info);
	  if (!seq)
	    return FALSE;

	  FUNC6 (seq, if_info->jump,
				   FUNC4 (if_info->insn_a));
	}
      return TRUE;
    }
  return FALSE;
}