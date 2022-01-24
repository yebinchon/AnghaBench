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
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC8 (tree datum, tree type)
{
  tree vfield, vcontext;

  if (datum == error_mark_node)
    return error_mark_node;

  /* First, convert to the requested type.  */
  if (!FUNC7 (FUNC2 (datum), type))
    datum = FUNC6 (datum, type, /*check_access=*/false,
			     /*nonnull=*/true);

  /* Second, the requested type may not be the owner of its own vptr.
     If not, convert to the base class that owns it.  We cannot use
     convert_to_base here, because VCONTEXT may appear more than once
     in the inheritance hierarchy of TYPE, and thus direct conversion
     between the types may be ambiguous.  Following the path back up
     one step at a time via primary bases avoids the problem.  */
  vfield = FUNC3 (type);
  vcontext = FUNC1 (vfield);
  while (!FUNC7 (vcontext, type))
    {
      datum = FUNC5 (datum, FUNC0 (type));
      type = FUNC2 (datum);
    }

  return FUNC4 (COMPONENT_REF, FUNC2 (vfield), datum, vfield, NULL_TREE);
}