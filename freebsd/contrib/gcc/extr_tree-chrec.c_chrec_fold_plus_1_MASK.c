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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PARAM_SCEV_MAX_EXPR_SIZE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int PLUS_EXPR ; 
#define  POLYNOMIAL_CHREC 128 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  chrec_dont_know ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dconstm1 ; 
 int /*<<< orphan*/  FUNC16 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static tree
FUNC19 (enum tree_code code, tree type, 
		   tree op0, tree op1)
{
  if (FUNC6 (op0)
      || FUNC6 (op1))
    return FUNC11 (op0, op1);
  
  switch (FUNC5 (op0))
    {
    case POLYNOMIAL_CHREC:
      switch (FUNC5 (op1))
	{
	case POLYNOMIAL_CHREC:
	  return FUNC15 (code, type, op0, op1);

	default:
	  if (code == PLUS_EXPR)
	    return FUNC9 
	      (FUNC2 (op0), 
	       FUNC14 (type, FUNC0 (op0), op1),
	       FUNC1 (op0));
	  else
	    return FUNC9 
	      (FUNC2 (op0), 
	       FUNC12 (type, FUNC0 (op0), op1),
	       FUNC1 (op0));
	}

    default:
      switch (FUNC5 (op1))
	{
	case POLYNOMIAL_CHREC:
	  if (code == PLUS_EXPR)
	    return FUNC9 
	      (FUNC2 (op1), 
	       FUNC14 (type, op0, FUNC0 (op1)),
	       FUNC1 (op1));
	  else
	    return FUNC9 
	      (FUNC2 (op1), 
	       FUNC12 (type, op0, FUNC0 (op1)),
	       FUNC13 (type, FUNC1 (op1), 
				    FUNC4 (type)
				    ? FUNC10 (type, dconstm1)
				    : FUNC8 (type, -1)));

	default:
	  {
	    int size = 0;
	    if ((FUNC18 (op0, &size)
		 || FUNC18 (op1, &size))
		&& size < FUNC3 (PARAM_SCEV_MAX_EXPR_SIZE))
	      return FUNC7 (code, type, op0, op1);
	    else if (size < FUNC3 (PARAM_SCEV_MAX_EXPR_SIZE))
	      return FUNC16 (code, type,
				  FUNC17 (type, op0),
				  FUNC17 (type, op1));
	    else
	      return chrec_dont_know;
	  }
	}
    }
}