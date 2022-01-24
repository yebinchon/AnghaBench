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
struct noce_if_info {scalar_t__ a; scalar_t__ b; int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; scalar_t__ x; int /*<<< orphan*/  cond; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 int BRANCH_COST ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int STORE_FLAG_VALUE ; 
 int TRUE ; 
 scalar_t__ UNKNOWN ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (struct noce_if_info*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static int
FUNC12 (struct noce_if_info *if_info)
{
  rtx target, seq;
  int reversep;

  reversep = 0;
  if (! no_new_pseudos
      && (BRANCH_COST >= 2
	  || STORE_FLAG_VALUE == -1)
      && ((if_info->a == const0_rtx
	   && FUNC10 (if_info->b, if_info->x))
	  || ((reversep = (FUNC9 (if_info->cond,
						     if_info->jump)
			   != UNKNOWN))
	      && if_info->b == const0_rtx
	      && FUNC10 (if_info->a, if_info->x))))
    {
      FUNC11 ();
      target = FUNC8 (if_info,
				     FUNC6 (FUNC0 (if_info->x)),
				     reversep, -1);
      if (target)
        target = FUNC5 (FUNC0 (if_info->x), AND,
				      if_info->x,
				      target, if_info->x, 0,
				      OPTAB_WIDEN);

      if (target)
	{
	  if (target != if_info->x)
	    FUNC7 (if_info->x, target);

	  seq = FUNC3 (if_info);
	  if (!seq)
	    return FALSE;

	  FUNC2 (seq, if_info->jump,
				   FUNC1 (if_info->insn_a));
	  return TRUE;
	}

      FUNC4 ();
    }

  return FALSE;
}