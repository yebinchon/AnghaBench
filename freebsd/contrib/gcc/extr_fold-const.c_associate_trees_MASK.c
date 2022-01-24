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

/* Variables and functions */
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ NEGATE_EXPR ; 
 int PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC6 (tree t1, tree t2, enum tree_code code, tree type)
{
  if (t1 == 0)
    return t2;
  else if (t2 == 0)
    return t1;

  /* If either input is CODE, a PLUS_EXPR, or a MINUS_EXPR, don't
     try to fold this since we will have infinite recursion.  But do
     deal with any NEGATE_EXPRs.  */
  if (FUNC0 (t1) == code || FUNC0 (t2) == code
      || FUNC0 (t1) == MINUS_EXPR || FUNC0 (t2) == MINUS_EXPR)
    {
      if (code == PLUS_EXPR)
	{
	  if (FUNC0 (t1) == NEGATE_EXPR)
	    return FUNC2 (MINUS_EXPR, type, FUNC4 (type, t2),
			   FUNC4 (type, FUNC1 (t1, 0)));
	  else if (FUNC0 (t2) == NEGATE_EXPR)
	    return FUNC2 (MINUS_EXPR, type, FUNC4 (type, t1),
			   FUNC4 (type, FUNC1 (t2, 0)));
	  else if (FUNC5 (t2))
	    return FUNC4 (type, t1);
	}
      else if (code == MINUS_EXPR)
	{
	  if (FUNC5 (t2))
	    return FUNC4 (type, t1);
	}

      return FUNC2 (code, type, FUNC4 (type, t1),
		     FUNC4 (type, t2));
    }

  return FUNC3 (code, type, FUNC4 (type, t1),
		      FUNC4 (type, t2));
}