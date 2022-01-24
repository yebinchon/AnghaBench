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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (tree t)
{
  tree list;
  tree vbase;

  /* We lay out the primary and secondary vtables in one contiguous
     vtable.  The primary vtable is first, followed by the non-virtual
     secondary vtables in inheritance graph order.  */
  list = FUNC6 (FUNC1 (FUNC4 (t)), NULL_TREE);
  FUNC5 (FUNC4 (t), FUNC4 (t),
			 FUNC4 (t), t, list);

  /* Then come the virtual bases, also in inheritance graph order.  */
  for (vbase = FUNC4 (t); vbase; vbase = FUNC2 (vbase))
    {
      if (!FUNC0 (vbase))
	continue;
      FUNC5 (vbase, vbase, FUNC4 (t), t, list);
    }

  if (FUNC1 (FUNC4 (t)))
    FUNC7 (FUNC4 (t), FUNC3 (list));
}