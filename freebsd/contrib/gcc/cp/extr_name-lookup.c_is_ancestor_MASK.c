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
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ NAMESPACE_DECL ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ global_namespace ; 

bool
FUNC6 (tree root, tree child)
{
  FUNC5 ((FUNC2 (root) == NAMESPACE_DECL
	       || FUNC2 (root) == FUNCTION_DECL
	       || FUNC0 (root)));
  FUNC5 ((FUNC2 (child) == NAMESPACE_DECL
	       || FUNC0 (child)));

  /* The global namespace encloses everything.  */
  if (root == global_namespace)
    return true;

  while (true)
    {
      /* If we've run out of scopes, stop.  */
      if (!child)
	return false;
      /* If we've reached the ROOT, it encloses CHILD.  */
      if (root == child)
	return true;
      /* Go out one level.  */
      if (FUNC4 (child))
	child = FUNC3 (child);
      child = FUNC1 (child);
    }
}