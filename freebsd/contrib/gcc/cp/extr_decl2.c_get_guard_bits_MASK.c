#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  (* guard_mask_bit ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  INDIRECT_REF ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  char_type_node ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static tree
FUNC4 (tree guard)
{
  if (!targetm.cxx.guard_mask_bit ())
    {
      /* We only set the first byte of the guard, in order to leave room
	 for a mutex in the high-order bits.  */
      guard = FUNC1 (ADDR_EXPR,
		      FUNC2 (FUNC0 (guard)),
		      guard);
      guard = FUNC1 (NOP_EXPR,
		      FUNC2 (char_type_node),
		      guard);
      guard = FUNC1 (INDIRECT_REF, char_type_node, guard);
    }

  return guard;
}