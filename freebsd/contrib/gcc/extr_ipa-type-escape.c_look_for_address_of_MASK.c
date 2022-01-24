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
 scalar_t__ ADDR_EXPR ; 
 scalar_t__ ARRAY_REF ; 
 scalar_t__ COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ VAR_DECL ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC8 (tree t)
{
  if (FUNC1 (t) == ADDR_EXPR)
    {
      tree x = FUNC4 (t);
      tree cref = FUNC2 (t, 0);

      /* If we have an expression of the form "&a.b.c.d", mark a.b,
	 b.c and c.d. as having its address taken.  */ 
      tree fielddecl = NULL_TREE;
      while (cref!= x)
	{
	  if (FUNC1 (cref) == COMPONENT_REF)
	    {
	      fielddecl =  FUNC2 (cref, 1);
	      FUNC7 (FUNC3 (fielddecl), 
					  FUNC0 (fielddecl));
	    }
	  else if (FUNC1 (cref) == ARRAY_REF)
	    FUNC5 (FUNC3 (cref), false, false);

	  cref = FUNC2 (cref, 0);
	}

      if (FUNC1 (x) == VAR_DECL) 
	FUNC6 (x);
    }
}