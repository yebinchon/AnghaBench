#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_22__ {int /*<<< orphan*/  skip_eval; } ;
struct TYPE_23__ {TYPE_1__ state; } ;
typedef  TYPE_2__ cpp_reader ;
typedef  size_t cpp_num_part ;
struct TYPE_24__ {int unsignedp; int high; int low; int overflow; } ;
typedef  TYPE_3__ cpp_num ;

/* Variables and functions */
 int CPP_DIV ; 
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_MINUS ; 
 size_t FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 size_t PART_PRECISION ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ FUNC2 (TYPE_2__*,TYPE_3__,TYPE_3__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__,TYPE_3__,size_t) ; 
 TYPE_3__ FUNC4 (TYPE_3__,size_t,size_t) ; 
 TYPE_3__ FUNC5 (TYPE_3__,size_t) ; 
 int FUNC6 (TYPE_3__,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__) ; 
 size_t precision ; 

__attribute__((used)) static cpp_num
FUNC8 (cpp_reader *pfile, cpp_num lhs, cpp_num rhs, enum cpp_ttype op)
{
  cpp_num result, sub;
  cpp_num_part mask;
  bool unsignedp = lhs.unsignedp || rhs.unsignedp;
  bool negate = false, lhs_neg = false;
  size_t i, precision = FUNC0 (pfile, precision);

  /* Prepare for unsigned division.  */
  if (!unsignedp)
    {
      if (!FUNC6 (lhs, precision))
	negate = !negate, lhs_neg = true, lhs = FUNC5 (lhs, precision);
      if (!FUNC6 (rhs, precision))
	negate = !negate, rhs = FUNC5 (rhs, precision);
    }

  /* Find the high bit.  */
  if (rhs.high)
    {
      i = precision - 1;
      mask = (cpp_num_part) 1 << (i - PART_PRECISION);
      for (; ; i--, mask >>= 1)
	if (rhs.high & mask)
	  break;
    }
  else if (rhs.low)
    {
      if (precision > PART_PRECISION)
	i = precision - PART_PRECISION - 1;
      else
	i = precision - 1;
      mask = (cpp_num_part) 1 << i;
      for (; ; i--, mask >>= 1)
	if (rhs.low & mask)
	  break;
    }
  else
    {
      if (!pfile->state.skip_eval)
	FUNC1 (pfile, CPP_DL_ERROR, "division by zero in #if");
      return lhs;
    }

  /* First nonzero bit of RHS is bit I.  Do naive division by
     shifting the RHS fully left, and subtracting from LHS if LHS is
     at least as big, and then repeating but with one less shift.
     This is not very efficient, but is easy to understand.  */

  rhs.unsignedp = true;
  lhs.unsignedp = true;
  i = precision - i - 1;
  sub = FUNC4 (rhs, precision, i);

  result.high = result.low = 0;
  for (;;)
    {
      if (FUNC3 (lhs, sub, precision))
	{
	  lhs = FUNC2 (pfile, lhs, sub, CPP_MINUS);
	  if (i >= PART_PRECISION)
	    result.high |= (cpp_num_part) 1 << (i - PART_PRECISION);
	  else
	    result.low |= (cpp_num_part) 1 << i;
	}
      if (i-- == 0)
	break;
      sub.low = (sub.low >> 1) | (sub.high << (PART_PRECISION - 1));
      sub.high >>= 1;
    }

  /* We divide so that the remainder has the sign of the LHS.  */
  if (op == CPP_DIV)
    {
      result.unsignedp = unsignedp;
      result.overflow = false;
      if (!unsignedp)
	{
	  if (negate)
	    result = FUNC5 (result, precision);
	  result.overflow = (FUNC6 (result, precision) ^ !negate
			     && !FUNC7 (result));
	}

      return result;
    }

  /* CPP_MOD.  */
  lhs.unsignedp = unsignedp;
  lhs.overflow = false;
  if (lhs_neg)
    lhs = FUNC5 (lhs, precision);

  return lhs;
}