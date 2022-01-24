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
struct noce_if_info {int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; scalar_t__ x; int /*<<< orphan*/  b; scalar_t__ a; scalar_t__ cond; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;

/* Variables and functions */
 int BRANCH_COST ; 
 int FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int GEU ; 
 int GTU ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int LEU ; 
 int LTU ; 
 scalar_t__ MINUS ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 scalar_t__ PLUS ; 
 int STORE_FLAG_VALUE ; 
 int TRUE ; 
 scalar_t__ UNKNOWN ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  constm1_rtx ; 
 scalar_t__ FUNC5 (scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC13 (struct noce_if_info*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int
FUNC17 (struct noce_if_info *if_info)
{
  rtx target, seq;
  int subtract, normalize;

  if (! no_new_pseudos
      && FUNC0 (if_info->a) == PLUS
      && FUNC15 (FUNC4 (if_info->a, 0), if_info->b)
      && (FUNC14 (if_info->cond, if_info->jump)
	  != UNKNOWN))
    {
      rtx cond = if_info->cond;
      enum rtx_code code = FUNC14 (cond, if_info->jump);

      /* First try to use addcc pattern.  */
      if (FUNC11 (FUNC4 (cond, 0), VOIDmode)
	  && FUNC11 (FUNC4 (cond, 1), VOIDmode))
	{
	  FUNC16 ();
	  target = FUNC5 (if_info->x, code,
					 FUNC4 (cond, 0),
					 FUNC4 (cond, 1),
					 VOIDmode,
					 if_info->b,
					 FUNC4 (if_info->a, 1),
					 FUNC1 (if_info->x),
					 (code == LTU || code == GEU
					  || code == LEU || code == GTU));
	  if (target)
	    {
	      if (target != if_info->x)
		FUNC12 (if_info->x, target);

	      seq = FUNC7 (if_info);
	      if (!seq)
		return FALSE;

	      FUNC6 (seq, if_info->jump,
				       FUNC2 (if_info->insn_a));
	      return TRUE;
	    }
	  FUNC8 ();
	}

      /* If that fails, construct conditional increment or decrement using
	 setcc.  */
      if (BRANCH_COST >= 2
	  && (FUNC4 (if_info->a, 1) == const1_rtx
	      || FUNC4 (if_info->a, 1) == constm1_rtx))
        {
	  FUNC16 ();
	  if (STORE_FLAG_VALUE == FUNC3 (FUNC4 (if_info->a, 1)))
	    subtract = 0, normalize = 0;
	  else if (-STORE_FLAG_VALUE == FUNC3 (FUNC4 (if_info->a, 1)))
	    subtract = 1, normalize = 0;
	  else
	    subtract = 0, normalize = FUNC3 (FUNC4 (if_info->a, 1));


	  target = FUNC13 (if_info,
					 FUNC10 (FUNC1 (if_info->x)),
					 1, normalize);

	  if (target)
	    target = FUNC9 (FUNC1 (if_info->x),
					  subtract ? MINUS : PLUS,
					  if_info->b, target, if_info->x,
					  0, OPTAB_WIDEN);
	  if (target)
	    {
	      if (target != if_info->x)
		FUNC12 (if_info->x, target);

	      seq = FUNC7 (if_info);
	      if (!seq)
		return FALSE;

	      FUNC6 (seq, if_info->jump,
				       FUNC2 (if_info->insn_a));
	      return TRUE;
	    }
	  FUNC8 ();
	}
    }

  return FALSE;
}