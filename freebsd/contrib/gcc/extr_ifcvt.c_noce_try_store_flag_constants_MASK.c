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
struct noce_if_info {int /*<<< orphan*/  insn_a; int /*<<< orphan*/  jump; scalar_t__ x; int /*<<< orphan*/  cond; int /*<<< orphan*/  b; int /*<<< orphan*/  a; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  AND ; 
 int /*<<< orphan*/  ASHIFT ; 
 int BRANCH_COST ; 
 scalar_t__ CONST_INT ; 
 int FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOR ; 
 int /*<<< orphan*/  MINUS ; 
 int /*<<< orphan*/  OPTAB_WIDEN ; 
 int /*<<< orphan*/  PLUS ; 
 scalar_t__ STORE_FLAG_VALUE ; 
 int TRUE ; 
 scalar_t__ UNKNOWN ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct noce_if_info*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  no_new_pseudos ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC11 (struct noce_if_info*,scalar_t__,int,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (scalar_t__,int) ; 

__attribute__((used)) static int
FUNC15 (struct noce_if_info *if_info)
{
  rtx target, seq;
  int reversep;
  HOST_WIDE_INT itrue, ifalse, diff, tmp;
  int normalize, can_reverse;
  enum machine_mode mode;

  if (! no_new_pseudos
      && FUNC1 (if_info->a) == CONST_INT
      && FUNC1 (if_info->b) == CONST_INT)
    {
      mode = FUNC2 (if_info->x);
      ifalse = FUNC4 (if_info->a);
      itrue = FUNC4 (if_info->b);

      /* Make sure we can represent the difference between the two values.  */
      if ((itrue - ifalse > 0)
	  != ((ifalse < 0) != (itrue < 0) ? ifalse < 0 : ifalse < itrue))
	return FALSE;

      diff = FUNC14 (itrue - ifalse, mode);

      can_reverse = (FUNC12 (if_info->cond, if_info->jump)
		     != UNKNOWN);

      reversep = 0;
      if (diff == STORE_FLAG_VALUE || diff == -STORE_FLAG_VALUE)
	normalize = 0;
      else if (ifalse == 0 && FUNC8 (itrue) >= 0
	       && (STORE_FLAG_VALUE == 1
		   || BRANCH_COST >= 2))
	normalize = 1;
      else if (itrue == 0 && FUNC8 (ifalse) >= 0 && can_reverse
	       && (STORE_FLAG_VALUE == 1 || BRANCH_COST >= 2))
	normalize = 1, reversep = 1;
      else if (itrue == -1
	       && (STORE_FLAG_VALUE == -1
		   || BRANCH_COST >= 2))
	normalize = -1;
      else if (ifalse == -1 && can_reverse
	       && (STORE_FLAG_VALUE == -1 || BRANCH_COST >= 2))
	normalize = -1, reversep = 1;
      else if ((BRANCH_COST >= 2 && STORE_FLAG_VALUE == -1)
	       || BRANCH_COST >= 3)
	normalize = -1;
      else
	return FALSE;

      if (reversep)
	{
	  tmp = itrue; itrue = ifalse; ifalse = tmp;
	  diff = FUNC14 (-diff, mode);
	}

      FUNC13 ();
      target = FUNC11 (if_info, if_info->x, reversep, normalize);
      if (! target)
	{
	  FUNC7 ();
	  return FALSE;
	}

      /* if (test) x = 3; else x = 4;
	 =>   x = 3 + (test == 0);  */
      if (diff == STORE_FLAG_VALUE || diff == -STORE_FLAG_VALUE)
	{
	  target = FUNC9 (mode,
					(diff == STORE_FLAG_VALUE
					 ? PLUS : MINUS),
					FUNC0 (ifalse), target, if_info->x, 0,
					OPTAB_WIDEN);
	}

      /* if (test) x = 8; else x = 0;
	 =>   x = (test != 0) << 3;  */
      else if (ifalse == 0 && (tmp = FUNC8 (itrue)) >= 0)
	{
	  target = FUNC9 (mode, ASHIFT,
					target, FUNC0 (tmp), if_info->x, 0,
					OPTAB_WIDEN);
	}

      /* if (test) x = -1; else x = b;
	 =>   x = -(test != 0) | b;  */
      else if (itrue == -1)
	{
	  target = FUNC9 (mode, IOR,
					target, FUNC0 (ifalse), if_info->x, 0,
					OPTAB_WIDEN);
	}

      /* if (test) x = a; else x = b;
	 =>   x = (-(test != 0) & (b - a)) + a;  */
      else
	{
	  target = FUNC9 (mode, AND,
					target, FUNC0 (diff), if_info->x, 0,
					OPTAB_WIDEN);
	  if (target)
	    target = FUNC9 (mode, PLUS,
					  target, FUNC0 (ifalse),
					  if_info->x, 0, OPTAB_WIDEN);
	}

      if (! target)
	{
	  FUNC7 ();
	  return FALSE;
	}

      if (target != if_info->x)
	FUNC10 (if_info->x, target);

      seq = FUNC6 (if_info);
      if (!seq)
	return FALSE;

      FUNC5 (seq, if_info->jump,
			       FUNC3 (if_info->insn_a));
      return TRUE;
    }

  return FALSE;
}