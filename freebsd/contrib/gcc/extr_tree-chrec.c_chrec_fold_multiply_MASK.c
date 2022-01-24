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
typedef  void* tree ;

/* Variables and functions */
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  MULT_EXPR ; 
#define  POLYNOMIAL_CHREC 128 
 int FUNC3 (void*) ; 
 scalar_t__ FUNC4 (void*) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC7 (void*,void*) ; 
 void* FUNC8 (void*,void*,void*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,void*,void*,void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (void*) ; 

tree
FUNC12 (tree type, 
		     tree op0,
		     tree op1)
{
  if (FUNC4 (op0)
      || FUNC4 (op1))
    return FUNC7 (op0, op1);
  
  switch (FUNC3 (op0))
    {
    case POLYNOMIAL_CHREC:
      switch (FUNC3 (op1))
	{
	case POLYNOMIAL_CHREC:
	  return FUNC8 (type, op0, op1);
	  
	default:
	  if (FUNC10 (op1))
	    return op0;
	  if (FUNC11 (op1))
	    return FUNC5 (type, 0);
	  
	  return FUNC6 
	    (FUNC2 (op0), 
	     FUNC12 (type, FUNC0 (op0), op1),
	     FUNC12 (type, FUNC1 (op0), op1));
	}
      
    default:
      if (FUNC10 (op0))
	return op1;
      
      if (FUNC11 (op0))
    	return FUNC5 (type, 0);
      
      switch (FUNC3 (op1))
	{
	case POLYNOMIAL_CHREC:
	  return FUNC6 
	    (FUNC2 (op1), 
	     FUNC12 (type, FUNC0 (op1), op0),
	     FUNC12 (type, FUNC1 (op1), op0));
	  
	default:
	  if (FUNC10 (op1))
	    return op0;
	  if (FUNC11 (op1))
	    return FUNC5 (type, 0);
	  return FUNC9 (MULT_EXPR, type, op0, op1);
	}
    }
}