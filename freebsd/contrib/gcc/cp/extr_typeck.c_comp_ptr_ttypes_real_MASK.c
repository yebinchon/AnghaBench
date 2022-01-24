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
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ METHOD_TYPE ; 
 scalar_t__ OFFSET_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC9 (tree to, tree from, int constp)
{
  bool to_more_cv_qualified = false;

  for (; ; to = FUNC1 (to), from = FUNC1 (from))
    {
      if (FUNC0 (to) != FUNC0 (from))
	return 0;

      if (FUNC0 (from) == OFFSET_TYPE
	  && !FUNC8 (FUNC2 (from),
			   FUNC2 (to)))
	return 0;

      /* Const and volatile mean something different for function types,
	 so the usual checks are not appropriate.  */
      if (FUNC0 (to) != FUNCTION_TYPE && FUNC0 (to) != METHOD_TYPE)
	{
	  /* In Objective-C++, some types may have been 'volatilized' by
	     the compiler for EH; when comparing them here, the volatile
	     qualification must be ignored.  */
	  bool objc_quals_match = FUNC6 (to, from);

	  if (!FUNC5 (to, from) && !objc_quals_match)
	    return 0;

	  if (!FUNC5 (from, to) && !objc_quals_match)
	    {
	      if (constp == 0)
		return 0;
	      to_more_cv_qualified = true;
	    }

	  if (constp > 0)
	    constp &= FUNC4 (to);
	}

      if (FUNC0 (to) != POINTER_TYPE && !FUNC3 (to))
	return ((constp >= 0 || to_more_cv_qualified)
		&& FUNC7 (to, from));
    }
}