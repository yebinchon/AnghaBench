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
 scalar_t__ BIT_FIELD_REF ; 
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ VIEW_CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static void 
FUNC7 (tree lhs __attribute__((unused)), tree t)
{
  if (FUNC6 (t) || FUNC0 (t) == VIEW_CONVERT_EXPR)
    {
      tree castfromvar = FUNC1 (t, 0);
      FUNC3 (FUNC2 (t), castfromvar);
    }
  else if (FUNC0 (t) == COMPONENT_REF
	   || FUNC0 (t) == INDIRECT_REF
	   || FUNC0 (t) == BIT_FIELD_REF)
    {
      tree base = FUNC4 (t);
      while (t != base)
	{
	  t = FUNC1 (t, 0);
	  if (FUNC0 (t) == VIEW_CONVERT_EXPR)
	    {
	      /* This may be some part of a component ref.
		 IE it may be a.b.VIEW_CONVERT_EXPR<weird_type>(c).d, AFAIK.
		 castfromref will give you a.b.c, not a. */
	      tree castfromref = FUNC1 (t, 0);
	      FUNC3 (FUNC2 (t), castfromref);
	    }
	  else if (FUNC0 (t) == COMPONENT_REF)
	    FUNC5 (FUNC2 (FUNC1 (t, 1)), false, false);
	}
    } 
}