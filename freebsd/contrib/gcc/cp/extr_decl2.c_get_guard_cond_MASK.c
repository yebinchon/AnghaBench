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
struct TYPE_3__ {scalar_t__ (* guard_mask_bit ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIT_AND_EXPR ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 () ; 
 TYPE_2__ targetm ; 

tree
FUNC6 (tree guard)
{
  tree guard_value;

  /* Check to see if the GUARD is zero.  */
  guard = FUNC3 (guard);

  /* Mask off all but the low bit.  */
  if (targetm.cxx.guard_mask_bit ())
    {
      guard_value = integer_one_node;
      if (!FUNC4 (FUNC0 (guard_value), FUNC0 (guard)))
	guard_value = FUNC1 (FUNC0 (guard), guard_value);
	guard = FUNC2 (BIT_AND_EXPR, guard, guard_value);
    }

  guard_value = integer_zero_node;
  if (!FUNC4 (FUNC0 (guard_value), FUNC0 (guard)))
    guard_value = FUNC1 (FUNC0 (guard), guard_value);
  return FUNC2 (EQ_EXPR, guard, guard_value);
}