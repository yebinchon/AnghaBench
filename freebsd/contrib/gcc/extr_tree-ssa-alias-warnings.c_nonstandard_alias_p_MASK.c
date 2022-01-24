#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {scalar_t__ escape_mask; } ;

/* Variables and functions */
 scalar_t__ NO_ESCAPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC7 (tree ptr, tree alias, bool ptr_ptr)
{
  /* Find the types to compare.  */
  tree ptr_type = FUNC1 (ptr, true);
  tree alias_type = FUNC1 (alias, ptr_ptr);

  /* XXX: for now, say it's OK if the alias escapes.
     Not sure this is needed in general, but otherwise GCC will not
     bootstrap.  */
  if (FUNC6 (FUNC2 (alias))->escape_mask != NO_ESCAPE)
      return false;

  /* XXX: don't get into structures for now.  It brings much complication
     and little benefit.  */
  if (FUNC4 (ptr_type) || FUNC4 (alias_type))
    return false;

  /* XXX: In 4.2.1, field resolution in alias is not as good as in pre-4.3
     This fixes problems found during the backport, where a pointer to the
     first field of a struct appears to be aliased to the whole struct.  */
  if (FUNC5 (alias))
     return false;

  /* If they are both SSA names of artificials, let it go, the warning
     is too confusing.  */
  if (FUNC0 (ptr) && FUNC0 (alias))
    return false;

  /* Compare the types.  */
  return FUNC3 (ptr_type, alias_type);
}