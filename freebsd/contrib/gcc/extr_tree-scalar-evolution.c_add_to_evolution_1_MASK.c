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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
#define  POLYNOMIAL_CHREC 128 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconst0 ; 

__attribute__((used)) static tree
FUNC11 (unsigned loop_nb, tree chrec_before, tree to_add,
		    tree at_stmt)
{
  tree type, left, right;

  switch (FUNC4 (chrec_before))
    {
    case POLYNOMIAL_CHREC:
      if (FUNC2 (chrec_before) <= loop_nb)
	{
	  unsigned var;

	  type = FUNC10 (chrec_before);
	  
	  /* When there is no evolution part in this loop, build it.  */
	  if (FUNC2 (chrec_before) < loop_nb)
	    {
	      var = loop_nb;
	      left = chrec_before;
	      right = FUNC3 (type)
		? FUNC7 (type, dconst0)
		: FUNC5 (type, 0);
	    }
	  else
	    {
	      var = FUNC2 (chrec_before);
	      left = FUNC0 (chrec_before);
	      right = FUNC1 (chrec_before);
	    }

	  to_add = FUNC8 (type, to_add, at_stmt);
	  right = FUNC8 (type, right, at_stmt);
	  right = FUNC9 (type, right, to_add);
	  return FUNC6 (var, left, right);
	}
      else
	{
	  /* Search the evolution in LOOP_NB.  */
	  left = FUNC11 (loop_nb, FUNC0 (chrec_before),
				     to_add, at_stmt);
	  right = FUNC1 (chrec_before);
	  right = FUNC8 (FUNC10 (left), right, at_stmt);
	  return FUNC6 (FUNC2 (chrec_before),
					 left, right);
	}
      
    default:
      /* These nodes do not depend on a loop.  */
      if (chrec_before == chrec_dont_know)
	return chrec_dont_know;

      left = chrec_before;
      right = FUNC8 (FUNC10 (left), to_add, at_stmt);
      return FUNC6 (loop_nb, left, right);
    }
}