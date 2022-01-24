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
 int FALSE ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ TARGET_CALLEE_INTERWORKING ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 

int
FUNC5 (tree func)
{
  FUNC3 (FUNC1 (func) == FUNCTION_DECL);

  /* Ignore the problem about functions whose address is taken.  */
  if (TARGET_CALLEE_INTERWORKING && FUNC2 (func))
    return TRUE;

#ifdef ARM_PE
  return lookup_attribute ("interfacearm", DECL_ATTRIBUTES (func)) != NULL_TREE;
#else
  return FALSE;
#endif
}