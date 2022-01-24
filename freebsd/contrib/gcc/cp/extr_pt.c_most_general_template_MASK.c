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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ TEMPLATE_DECL ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

tree
FUNC8 (tree decl)
{
  /* If DECL is a FUNCTION_DECL, find the TEMPLATE_DECL of which it is
     an immediate specialization.  */
  if (FUNC6 (decl) == FUNCTION_DECL)
    {
      if (FUNC4 (decl)) {
	decl = FUNC5 (decl);

	/* The DECL_TI_TEMPLATE can be an IDENTIFIER_NODE for a
	   template friend.  */
	if (FUNC6 (decl) != TEMPLATE_DECL)
	  return NULL_TREE;
      } else
	return NULL_TREE;
    }

  /* Look for more and more general templates.  */
  while (FUNC4 (decl))
    {
      /* The DECL_TI_TEMPLATE can be an IDENTIFIER_NODE in some cases.
	 (See cp-tree.h for details.)  */
      if (FUNC6 (FUNC5 (decl)) != TEMPLATE_DECL)
	break;

      if (FUNC1 (FUNC7 (decl))
	  && FUNC0 (FUNC7 (decl)))
	break;

      /* Stop if we run into an explicitly specialized class template.  */
      if (!FUNC3 (decl)
	  && FUNC2 (decl)
	  && FUNC0 (FUNC2 (decl)))
	break;

      decl = FUNC5 (decl);
    }

  return decl;
}