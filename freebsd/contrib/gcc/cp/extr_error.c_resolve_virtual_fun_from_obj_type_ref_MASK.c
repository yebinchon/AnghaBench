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
typedef  scalar_t__ HOST_WIDE_INT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int TARGET_VTABLE_USES_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC8 (tree ref)
{
  tree obj_type = FUNC5 (FUNC2 (ref));
  HOST_WIDE_INT index = FUNC7 (FUNC3 (ref), 1);
  tree fun = FUNC0 (FUNC6 (FUNC5 (obj_type)));
  while (index)
    {
      fun = FUNC4 (fun);
      index -= (TARGET_VTABLE_USES_DESCRIPTORS
		? TARGET_VTABLE_USES_DESCRIPTORS : 1);
    }

  return FUNC1 (fun);
}