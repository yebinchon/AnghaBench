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
typedef  int /*<<< orphan*/  ipa_reference_local_vars_info_t ;

/* Variables and functions */
 scalar_t__ ARRAY_REF ; 
 scalar_t__ EXC_PTR_EXPR ; 
 scalar_t__ FILTER_EXPR ; 
 scalar_t__ IMAGPART_EXPR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ REALPART_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6 (ipa_reference_local_vars_info_t local, tree t, bool checking_write)
{
  if ((FUNC2 (t) == EXC_PTR_EXPR) || (FUNC2 (t) == FILTER_EXPR))
    return;

  while (FUNC2 (t) == REALPART_EXPR 
	 || FUNC2 (t) == IMAGPART_EXPR
	 || FUNC5 (t))
    {
      if (FUNC2 (t) == ARRAY_REF)
	FUNC4 (local, FUNC3 (t, 1), false);
      t = FUNC3 (t, 0);
    }

  /* The bottom of an indirect reference can only be read, not
     written.  So just recurse and whatever we find, check it against
     the read bitmaps.  */

  /*  if (INDIRECT_REF_P (t) || TREE_CODE (t) == MEM_REF) */
  /* FIXME when we have array_ref's of pointers.  */
  if (FUNC0 (t))
    FUNC6 (local, FUNC3 (t, 0), false);

  if (FUNC1 (t))
    FUNC4 (local, t, checking_write);
}