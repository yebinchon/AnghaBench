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
 int /*<<< orphan*/  NULL_TREE ; 
#define  POLYNOMIAL_CHREC 128 
 int const FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree 
FUNC6 (tree chrec, 
			     unsigned loop_num,
			     bool right)
{
  tree component;

  if (FUNC4 (chrec))
    return chrec;
  
  switch (FUNC3 (chrec))
    {
    case POLYNOMIAL_CHREC:
      if (FUNC2 (chrec) == loop_num)
	{
	  if (right)
	    component = FUNC1 (chrec);
	  else
	    component = FUNC0 (chrec);

	  if (FUNC3 (FUNC0 (chrec)) != POLYNOMIAL_CHREC
	      || FUNC2 (FUNC0 (chrec)) != FUNC2 (chrec))
	    return component;
	  
	  else
	    return FUNC5
	      (loop_num, 
	       FUNC6 (FUNC0 (chrec), 
					    loop_num, 
					    right), 
	       component);
	}
      
      else if (FUNC2 (chrec) < loop_num)
	/* There is no evolution part in this loop.  */
	return NULL_TREE;
      
      else
	return FUNC6 (FUNC0 (chrec), 
					    loop_num, 
					    right);
      
     default:
      if (right)
	return NULL_TREE;
      else
	return chrec;
    }
}