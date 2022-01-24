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
struct loop {int dummy; } ;

/* Variables and functions */
 scalar_t__ ARRAY_REF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct loop* FUNC3 (int /*<<< orphan*/ ,struct loop*) ; 
 struct loop* FUNC4 (int /*<<< orphan*/ ,struct loop*) ; 

__attribute__((used)) static bool
FUNC5 (tree ref, tree *index, void *data)
{
  struct loop *loop = data, *max_loop;

  /* If REF is an array reference, check also that the step and the lower
     bound is invariant in LOOP.  */
  if (FUNC0 (ref) == ARRAY_REF)
    {
      tree step = FUNC1 (ref);
      tree lbound = FUNC2 (ref);

      max_loop = FUNC4 (step, loop);
      if (!max_loop)
	return false;

      max_loop = FUNC4 (lbound, loop);
      if (!max_loop)
	return false;
    }

  max_loop = FUNC3 (*index, loop);
  if (!max_loop)
    return false;

  return true;
}