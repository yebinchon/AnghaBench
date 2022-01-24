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
 scalar_t__ BLOCK_POINTER_TYPE ; 
 scalar_t__ FUNCTION_TYPE ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (tree lhptee, tree rhptee)
{
  if (FUNC2 (lhptee) == FUNC2 (rhptee))
    return true;
  if (FUNC0 (lhptee) == FUNCTION_TYPE && FUNC0 (rhptee) == FUNCTION_TYPE)
    return FUNC3 (lhptee, rhptee);
  /* APPLE LOCAL begin radar 5882266 (C++ cm) */
  if (FUNC0 (lhptee) == POINTER_TYPE && FUNC0 (rhptee) == POINTER_TYPE)
    return FUNC4 (FUNC1 (lhptee), FUNC1 (rhptee));
  /* APPLE LOCAL end radar 5882266 (C++ cm) */
  /* APPLE LOCAL begin radar 5988995 (C++ cm) */
  if (FUNC0 (lhptee) == BLOCK_POINTER_TYPE
      && FUNC0 (rhptee) == BLOCK_POINTER_TYPE)
    return FUNC4 (FUNC1 (lhptee), FUNC1 (rhptee));
  /* APPLE LOCAL end radar 5988995 (C++ cm) */
  return false;
}