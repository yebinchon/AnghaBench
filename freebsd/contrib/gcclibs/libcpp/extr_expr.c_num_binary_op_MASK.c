#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_20__ {int /*<<< orphan*/  skip_eval; } ;
struct TYPE_21__ {TYPE_1__ state; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_22__ {int unsignedp; size_t low; int overflow; scalar_t__ high; } ;
typedef  TYPE_3__ cpp_num ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_PEDWARN ; 
#define  CPP_LSHIFT 131 
#define  CPP_MINUS 130 
 size_t FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
#define  CPP_PLUS 129 
#define  CPP_RSHIFT 128 
 int /*<<< orphan*/  c99 ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ FUNC3 (TYPE_3__,size_t,size_t) ; 
 TYPE_3__ FUNC4 (TYPE_3__,size_t) ; 
 int FUNC5 (TYPE_3__,size_t) ; 
 TYPE_3__ FUNC6 (TYPE_3__,size_t,size_t) ; 
 TYPE_3__ FUNC7 (TYPE_3__,size_t) ; 
 size_t precision ; 

__attribute__((used)) static cpp_num
FUNC8 (cpp_reader *pfile, cpp_num lhs, cpp_num rhs, enum cpp_ttype op)
{
  cpp_num result;
  size_t precision = FUNC0 (pfile, precision);
  size_t n;

  switch (op)
    {
      /* Shifts.  */
    case CPP_LSHIFT:
    case CPP_RSHIFT:
      if (!rhs.unsignedp && !FUNC5 (rhs, precision))
	{
	  /* A negative shift is a positive shift the other way.  */
	  if (op == CPP_LSHIFT)
	    op = CPP_RSHIFT;
	  else
	    op = CPP_LSHIFT;
	  rhs = FUNC4 (rhs, precision);
	}
      if (rhs.high)
	n = ~0;			/* Maximal.  */
      else
	n = rhs.low;
      if (op == CPP_LSHIFT)
	lhs = FUNC3 (lhs, precision, n);
      else
	lhs = FUNC6 (lhs, precision, n);
      break;

      /* Arithmetic.  */
    case CPP_MINUS:
      rhs = FUNC4 (rhs, precision);
    case CPP_PLUS:
      result.low = lhs.low + rhs.low;
      result.high = lhs.high + rhs.high;
      if (result.low < lhs.low)
	result.high++;
      result.unsignedp = lhs.unsignedp || rhs.unsignedp;
      result.overflow = false;

      result = FUNC7 (result, precision);
      if (!result.unsignedp)
	{
	  bool lhsp = FUNC5 (lhs, precision);
	  result.overflow = (lhsp == FUNC5 (rhs, precision)
			     && lhsp != FUNC5 (result, precision));
	}
      return result;

      /* Comma.  */
    default: /* case CPP_COMMA: */
      if (FUNC1 (pfile) && (!FUNC0 (pfile, c99)
				   || !pfile->state.skip_eval))
	FUNC2 (pfile, CPP_DL_PEDWARN,
		   "comma operator in operand of #if");
      lhs = rhs;
      break;
    }

  return lhs;
}