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
 scalar_t__ COMPONENT_REF ; 
 scalar_t__ CONVERT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ INDIRECT_REF ; 
 scalar_t__ NOP_EXPR ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size_one_node ; 
 int /*<<< orphan*/  size_type_node ; 

tree
FUNC11 (tree expr)
{
  tree t;

  if (FUNC6 (expr))
    t = FUNC10 (FUNC0 (expr));

  else if (FUNC2 (expr) == COMPONENT_REF
	   && FUNC1 (FUNC3 (expr, 1)))
    {
      FUNC8 ("%<__alignof%> applied to a bit-field");
      t = size_one_node;
    }
  else if (FUNC2 (expr) == COMPONENT_REF
	   && FUNC2 (FUNC3 (expr, 1)) == FIELD_DECL)
    t = FUNC10 (FUNC0 (FUNC3 (expr, 1)));

  else if (FUNC2 (expr) == INDIRECT_REF)
    {
      tree t = FUNC3 (expr, 0);
      tree best = t;
      int bestalign = FUNC5 (FUNC4 (FUNC4 (t)));

      while ((FUNC2 (t) == NOP_EXPR || FUNC2 (t) == CONVERT_EXPR)
	     && FUNC2 (FUNC4 (FUNC3 (t, 0))) == POINTER_TYPE)
	{
	  int thisalign;

	  t = FUNC3 (t, 0);
	  thisalign = FUNC5 (FUNC4 (FUNC4 (t)));
	  if (thisalign > bestalign)
	    best = t, bestalign = thisalign;
	}
      return FUNC7 (FUNC4 (FUNC4 (best)));
    }
  else
    return FUNC7 (FUNC4 (expr));

  return FUNC9 (size_type_node, t);
}