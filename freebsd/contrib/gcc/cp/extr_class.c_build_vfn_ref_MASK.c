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
 int /*<<< orphan*/  ADDR_EXPR ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 int /*<<< orphan*/  OBJ_TYPE_REF ; 
 scalar_t__ TARGET_VTABLE_USES_DESCRIPTORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

tree
FUNC6 (tree instance_ptr, tree idx)
{
  tree aref;

  aref = FUNC5 (FUNC3 (instance_ptr, 0), idx);

  /* When using function descriptors, the address of the
     vtable entry is treated as a function pointer.  */
  if (TARGET_VTABLE_USES_DESCRIPTORS)
    aref = FUNC1 (NOP_EXPR, FUNC0 (aref),
		   FUNC4 (ADDR_EXPR, aref, /*noconvert=*/1));

  /* Remember this as a method reference, for later devirtualization.  */
  aref = FUNC2 (OBJ_TYPE_REF, FUNC0 (aref), aref, instance_ptr, idx);

  return aref;
}