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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ POINTER_TYPE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ VOID_TYPE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6 (tree to, tree from)
{
  to = FUNC5 (to);
  from = FUNC5 (from);

  if (FUNC2 (to) == POINTER_TYPE && FUNC2 (from) == POINTER_TYPE)
    {
      to = FUNC3 (to);
      from = FUNC3 (from);

      if (! FUNC4 (to, from))
	return 0;

      if (FUNC2 (to) == VOID_TYPE)
	return 1;

      /* Else fall through.  */
    }

  if (FUNC0 (to) && FUNC0 (from)
      && FUNC1 (to, from))
    return 1;

  return 0;
}