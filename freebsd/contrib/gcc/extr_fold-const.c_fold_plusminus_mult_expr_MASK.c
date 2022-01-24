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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ MULT_EXPR ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC11 (enum tree_code code, tree type, tree arg0, tree arg1)
{
  tree arg00, arg01, arg10, arg11;
  tree alt0 = NULL_TREE, alt1 = NULL_TREE, same;

  /* (A * C) +- (B * C) -> (A+-B) * C.
     (A * C) +- A -> A * (C+-1).
     We are most concerned about the case where C is a constant,
     but other combinations show up during loop reduction.  Since
     it is not difficult, try all four possibilities.  */

  if (FUNC0 (arg0) == MULT_EXPR)
    {
      arg00 = FUNC2 (arg0, 0);
      arg01 = FUNC2 (arg0, 1);
    }
  else
    {
      arg00 = arg0;
      arg01 = FUNC5 (type);
    }
  if (FUNC0 (arg1) == MULT_EXPR)
    {
      arg10 = FUNC2 (arg1, 0);
      arg11 = FUNC2 (arg1, 1);
    }
  else
    {
      arg10 = arg1;
      arg11 = FUNC5 (type);
    }
  same = NULL_TREE;

  if (FUNC10 (arg01, arg11, 0))
    same = arg01, alt0 = arg00, alt1 = arg10;
  else if (FUNC10 (arg00, arg10, 0))
    same = arg00, alt0 = arg01, alt1 = arg11;
  else if (FUNC10 (arg00, arg11, 0))
    same = arg00, alt0 = arg01, alt1 = arg10;
  else if (FUNC10 (arg01, arg10, 0))
    same = arg01, alt0 = arg00, alt1 = arg11;

  /* No identical multiplicands; see if we can find a common
     power-of-two factor in non-power-of-two multiplies.  This
     can help in multi-dimensional array access.  */
  else if (FUNC9 (arg01, 0)
	   && FUNC9 (arg11, 0))
    {
      HOST_WIDE_INT int01, int11, tmp;
      bool swap = false;
      tree maybe_same;
      int01 = FUNC1 (arg01);
      int11 = FUNC1 (arg11);

      /* Move min of absolute values to int11.  */
      if ((int01 >= 0 ? int01 : -int01)
	  < (int11 >= 0 ? int11 : -int11))
        {
	  tmp = int01, int01 = int11, int11 = tmp;
	  alt0 = arg00, arg00 = arg10, arg10 = alt0;
	  maybe_same = arg01;
	  swap = true;
	}
      else
	maybe_same = arg11;

      if (FUNC6 (int11) > 0 && int01 % int11 == 0)
        {
	  alt0 = FUNC7 (MULT_EXPR, FUNC3 (arg00), arg00,
			      FUNC4 (FUNC3 (arg00),
					     int01 / int11));
	  alt1 = arg10;
	  same = maybe_same;
	  if (swap)
	    maybe_same = alt0, alt0 = alt1, alt1 = maybe_same;
	}
    }

  if (same)
    return FUNC7 (MULT_EXPR, type,
			FUNC7 (code, type,
				     FUNC8 (type, alt0),
				     FUNC8 (type, alt1)),
			FUNC8 (type, same));

  return NULL_TREE;
}