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
#define  POLYNOMIAL_CHREC 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (tree chrec_a,
		 tree chrec_b)
{
  if ((FUNC2 (chrec_a)
       && FUNC3 (chrec_b))
      || (FUNC2 (chrec_b)
	  && FUNC3 (chrec_a)))
    return true;
  
  if (FUNC3 (chrec_a)
      && FUNC3 (chrec_b))
    {
      switch (FUNC1 (chrec_a))
	{
	case POLYNOMIAL_CHREC:
	  switch (FUNC1 (chrec_b))
	    {
	    case POLYNOMIAL_CHREC:
	      if (FUNC0 (chrec_a) != FUNC0 (chrec_b))
		return false;
	      
	    default:
	      return true;
	    }
	  
	default:
	  return true;
	}
    }
  
  return false;
}