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
struct noce_if_info {scalar_t__ cond; scalar_t__ cond_earliest; scalar_t__ jump; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  x; } ;
typedef  scalar_t__ rtx ;
typedef  enum rtx_code { ____Placeholder_rtx_code } rtx_code ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ CONST_INT ; 
#define  GE 131 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
#define  GT 130 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ LABEL_REF ; 
#define  LE 129 
#define  LT 128 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ SET ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,int) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,int,scalar_t__*,scalar_t__,int,int) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 
 scalar_t__ FUNC14 (int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC16 (scalar_t__) ; 
 scalar_t__ FUNC17 (scalar_t__) ; 
 scalar_t__ FUNC18 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC21 (int) ; 

__attribute__((used)) static rtx
FUNC22 (struct noce_if_info *if_info, rtx target,
			rtx *earliest)
{
  rtx cond, set, insn;
  int reverse;

  /* If target is already mentioned in the known condition, return it.  */
  if (FUNC18 (target, if_info->cond))
    {
      *earliest = if_info->cond_earliest;
      return if_info->cond;
    }

  set = FUNC16 (if_info->jump);
  cond = FUNC11 (FUNC10 (set), 0);
  reverse
    = FUNC1 (FUNC11 (FUNC10 (set), 2)) == LABEL_REF
      && FUNC11 (FUNC11 (FUNC10 (set), 2), 0) == FUNC5 (if_info->jump);

  /* If we're looking for a constant, try to make the conditional
     have that constant in it.  There are two reasons why it may
     not have the constant we want:

     1. GCC may have needed to put the constant in a register, because
        the target can't compare directly against that constant.  For
        this case, we look for a SET immediately before the comparison
        that puts a constant in that register.

     2. GCC may have canonicalized the conditional, for example
	replacing "if x < 4" with "if x <= 3".  We can undo that (or
	make equivalent types of changes) to get the constants we need
	if they're off by one in the right direction.  */

  if (FUNC1 (target) == CONST_INT)
    {
      enum rtx_code code = FUNC1 (if_info->cond);
      rtx op_a = FUNC11 (if_info->cond, 0);
      rtx op_b = FUNC11 (if_info->cond, 1);
      rtx prev_insn;

      /* First, look to see if we put a constant in a register.  */
      prev_insn = FUNC17 (if_info->cond_earliest);
      if (prev_insn
	  && FUNC3 (prev_insn)
	  && FUNC1 (FUNC7 (prev_insn)) == SET)
	{
	  rtx src = FUNC13 (prev_insn);
	  if (!src)
	    src = FUNC10 (FUNC7 (prev_insn));
	  if (FUNC1 (src) == CONST_INT)
	    {
	      if (FUNC20 (op_a, FUNC9 (FUNC7 (prev_insn))))
		op_a = src;
	      else if (FUNC20 (op_b, FUNC9 (FUNC7 (prev_insn))))
		op_b = src;

	      if (FUNC1 (op_a) == CONST_INT)
		{
		  rtx tmp = op_a;
		  op_a = op_b;
		  op_b = tmp;
		  code = FUNC21 (code);
		}
	    }
	}

      /* Now, look to see if we can get the right constant by
	 adjusting the conditional.  */
      if (FUNC1 (op_b) == CONST_INT)
	{
	  HOST_WIDE_INT desired_val = FUNC4 (target);
	  HOST_WIDE_INT actual_val = FUNC4 (op_b);

	  switch (code)
	    {
	    case LT:
	      if (actual_val == desired_val + 1)
		{
		  code = LE;
		  op_b = FUNC0 (desired_val);
		}
	      break;
	    case LE:
	      if (actual_val == desired_val - 1)
		{
		  code = LT;
		  op_b = FUNC0 (desired_val);
		}
	      break;
	    case GT:
	      if (actual_val == desired_val - 1)
		{
		  code = GE;
		  op_b = FUNC0 (desired_val);
		}
	      break;
	    case GE:
	      if (actual_val == desired_val + 1)
		{
		  code = GT;
		  op_b = FUNC0 (desired_val);
		}
	      break;
	    default:
	      break;
	    }
	}

      /* If we made any changes, generate a new conditional that is
	 equivalent to what we started with, but has the right
	 constants in it.  */
      if (code != FUNC1 (if_info->cond)
	  || op_a != FUNC11 (if_info->cond, 0)
	  || op_b != FUNC11 (if_info->cond, 1))
	{
	  cond = FUNC14 (code, FUNC2 (cond), op_a, op_b);
	  *earliest = if_info->cond_earliest;
	  return cond;
	}
    }

  cond = FUNC12 (if_info->jump, cond, reverse,
				 earliest, target, false, true);
  if (! cond || ! FUNC18 (target, cond))
    return NULL;

  /* We almost certainly searched back to a different place.
     Need to re-verify correct lifetimes.  */

  /* X may not be mentioned in the range (cond_earliest, jump].  */
  for (insn = if_info->jump; insn != *earliest; insn = FUNC8 (insn))
    if (FUNC3 (insn) && FUNC19 (if_info->x, FUNC7 (insn)))
      return NULL;

  /* A and B may not be modified in the range [cond_earliest, jump).  */
  for (insn = *earliest; insn != if_info->jump; insn = FUNC6 (insn))
    if (FUNC3 (insn)
	&& (FUNC15 (if_info->a, insn)
	    || FUNC15 (if_info->b, insn)))
      return NULL;

  return cond;
}