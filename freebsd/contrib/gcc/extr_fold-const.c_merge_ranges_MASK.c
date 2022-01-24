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
typedef  scalar_t__ tree ;

/* Variables and functions */
#define  ENUMERAL_TYPE 130 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GT_EXPR ; 
 int INTEGER_CST ; 
#define  INTEGER_TYPE 129 
 int /*<<< orphan*/  LE_EXPR ; 
 int /*<<< orphan*/  LT_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
#define  POINTER_TYPE 128 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ integer_one_node ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14 (int *pin_p, tree *plow, tree *phigh, int in0_p, tree low0,
	      tree high0, int in1_p, tree low1, tree high1)
{
  int no_overlap;
  int subset;
  int temp;
  tree tem;
  int in_p;
  tree low, high;
  int lowequal = ((low0 == 0 && low1 == 0)
		  || FUNC8 (FUNC10 (EQ_EXPR, integer_type_node,
						low0, 0, low1, 0)));
  int highequal = ((high0 == 0 && high1 == 0)
		   || FUNC8 (FUNC10 (EQ_EXPR, integer_type_node,
						 high0, 1, high1, 1)));

  /* Make range 0 be the range that starts first, or ends last if they
     start at the same value.  Swap them if it isn't.  */
  if (FUNC8 (FUNC10 (GT_EXPR, integer_type_node,
				 low0, 0, low1, 0))
      || (lowequal
	  && FUNC8 (FUNC10 (GT_EXPR, integer_type_node,
					high1, 1, high0, 1))))
    {
      temp = in0_p, in0_p = in1_p, in1_p = temp;
      tem = low0, low0 = low1, low1 = tem;
      tem = high0, high0 = high1, high1 = tem;
    }

  /* Now flag two cases, whether the ranges are disjoint or whether the
     second range is totally subsumed in the first.  Note that the tests
     below are simplified by the ones above.  */
  no_overlap = FUNC8 (FUNC10 (LT_EXPR, integer_type_node,
					  high0, 1, low1, 0));
  subset = FUNC8 (FUNC10 (LE_EXPR, integer_type_node,
				      high1, 1, high0, 1));

  /* We now have four cases, depending on whether we are including or
     excluding the two ranges.  */
  if (in0_p && in1_p)
    {
      /* If they don't overlap, the result is false.  If the second range
	 is a subset it is the result.  Otherwise, the range is from the start
	 of the second to the end of the first.  */
      if (no_overlap)
	in_p = 0, low = high = 0;
      else if (subset)
	in_p = 1, low = low1, high = high1;
      else
	in_p = 1, low = low1, high = high0;
    }

  else if (in0_p && ! in1_p)
    {
      /* If they don't overlap, the result is the first range.  If they are
	 equal, the result is false.  If the second range is a subset of the
	 first, and the ranges begin at the same place, we go from just after
	 the end of the second range to the end of the first.  If the second
	 range is not a subset of the first, or if it is a subset and both
	 ranges end at the same place, the range starts at the start of the
	 first range and ends just before the second range.
	 Otherwise, we can't describe this as a single range.  */
      if (no_overlap)
	in_p = 1, low = low0, high = high0;
      else if (lowequal && highequal)
	in_p = 0, low = high = 0;
      else if (subset && lowequal)
	{
	  low = FUNC12 (high1);
	  high = high0;
	  in_p = 1;
	  if (low == 0)
	    {
	      /* We are in the weird situation where high0 > high1 but
		 high1 has no successor.  Punt.  */
	      return 0;
	    }
	}
      else if (! subset || highequal)
	{
	  low = low0;
	  high = FUNC11 (low1);
	  in_p = 1;
	  if (high == 0)
	    {
	      /* low0 < low1 but low1 has no predecessor.  Punt.  */
	      return 0;
	    }
	}
      else
	return 0;
    }

  else if (! in0_p && in1_p)
    {
      /* If they don't overlap, the result is the second range.  If the second
	 is a subset of the first, the result is false.  Otherwise,
	 the range starts just after the first range and ends at the
	 end of the second.  */
      if (no_overlap)
	in_p = 1, low = low1, high = high1;
      else if (subset || highequal)
	in_p = 0, low = high = 0;
      else
	{
	  low = FUNC12 (high0);
	  high = high1;
	  in_p = 1;
	  if (low == 0)
	    {
	      /* high1 > high0 but high0 has no successor.  Punt.  */
	      return 0;
	    }
	}
    }

  else
    {
      /* The case where we are excluding both ranges.  Here the complex case
	 is if they don't overlap.  In that case, the only time we have a
	 range is if they are adjacent.  If the second is a subset of the
	 first, the result is the first.  Otherwise, the range to exclude
	 starts at the beginning of the first range and ends at the end of the
	 second.  */
      if (no_overlap)
	{
	  if (FUNC8 (FUNC10 (EQ_EXPR, integer_type_node,
					 FUNC12 (high0),
					 1, low1, 0)))
	    in_p = 0, low = low0, high = high1;
	  else
	    {
	      /* Canonicalize - [min, x] into - [-, x].  */
	      if (low0 && FUNC1 (low0) == INTEGER_CST)
		switch (FUNC1 (FUNC2 (low0)))
		  {
		  case ENUMERAL_TYPE:
		    if (FUNC6 (FUNC2 (low0))
			!= FUNC0 (FUNC5 (FUNC2 (low0))))
		      break;
		    /* FALLTHROUGH */
		  case INTEGER_TYPE:
		    if (FUNC13 (low0,
					    FUNC4 (FUNC2 (low0))))
		      low0 = 0;
		    break;
		  case POINTER_TYPE:
		    if (FUNC7 (FUNC2 (low0))
			&& FUNC9 (low0))
		      low0 = 0;
		    break;
		  default:
		    break;
		  }

	      /* Canonicalize - [x, max] into - [x, -].  */
	      if (high1 && FUNC1 (high1) == INTEGER_CST)
		switch (FUNC1 (FUNC2 (high1)))
		  {
		  case ENUMERAL_TYPE:
		    if (FUNC6 (FUNC2 (high1))
			!= FUNC0 (FUNC5 (FUNC2 (high1))))
		      break;
		    /* FALLTHROUGH */
		  case INTEGER_TYPE:
		    if (FUNC13 (high1,
					    FUNC3 (FUNC2 (high1))))
		      high1 = 0;
		    break;
		  case POINTER_TYPE:
		    if (FUNC7 (FUNC2 (high1))
			&& FUNC9 (FUNC10 (PLUS_EXPR, NULL_TREE,
						       high1, 1,
						       integer_one_node, 1)))
		      high1 = 0;
		    break;
		  default:
		    break;
		  }

	      /* The ranges might be also adjacent between the maximum and
	         minimum values of the given type.  For
	         - [{min,-}, x] and - [y, {max,-}] ranges where x + 1 < y
	         return + [x + 1, y - 1].  */
	      if (low0 == 0 && high1 == 0)
	        {
		  low = FUNC12 (high0);
		  high = FUNC11 (low1);
		  if (low == 0 || high == 0)
		    return 0;

		  in_p = 1;
		}
	      else
		return 0;
	    }
	}
      else if (subset)
	in_p = 0, low = low0, high = high0;
      else
	in_p = 0, low = low0, high = high1;
    }

  *pin_p = in_p, *plow = low, *phigh = high;
  return 1;
}