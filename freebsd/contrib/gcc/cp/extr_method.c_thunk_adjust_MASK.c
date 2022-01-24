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
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 int /*<<< orphan*/  PLUS_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ vtable_entry_type ; 

__attribute__((used)) static tree
FUNC7 (tree ptr, bool this_adjusting,
	      HOST_WIDE_INT fixed_offset, tree virtual_offset)
{
  if (this_adjusting)
    /* Adjust the pointer by the constant.  */
    ptr = FUNC4 (PLUS_EXPR, FUNC0 (ptr), ptr,
		       FUNC6 (fixed_offset));

  /* If there's a virtual offset, look up that value in the vtable and
     adjust the pointer again.  */
  if (virtual_offset)
    {
      tree vtable;

      ptr = FUNC5 (ptr);
      /* The vptr is always at offset zero in the object.  */
      vtable = FUNC1 (NOP_EXPR,
		       FUNC3 (FUNC3
					   (vtable_entry_type)),
		       ptr);
      /* Form the vtable address.  */
      vtable = FUNC1 (INDIRECT_REF, FUNC0 (FUNC0 (vtable)), vtable);
      /* Find the entry with the vcall offset.  */
      vtable = FUNC2 (PLUS_EXPR, FUNC0 (vtable), vtable, virtual_offset);
      /* Get the offset itself.  */
      vtable = FUNC1 (INDIRECT_REF, FUNC0 (FUNC0 (vtable)), vtable);
      /* Adjust the `this' pointer.  */
      ptr = FUNC4 (PLUS_EXPR, FUNC0 (ptr), ptr, vtable);
    }

  if (!this_adjusting)
    /* Adjust the pointer by the constant.  */
    ptr = FUNC4 (PLUS_EXPR, FUNC0 (ptr), ptr,
		       FUNC6 (fixed_offset));

  return ptr;
}