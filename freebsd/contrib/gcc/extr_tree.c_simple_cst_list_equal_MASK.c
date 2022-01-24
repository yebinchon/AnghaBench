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
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC3 (tree l1, tree l2)
{
  while (l1 != NULL_TREE && l2 != NULL_TREE)
    {
      if (FUNC2 (FUNC1 (l1), FUNC1 (l2)) != 1)
	return 0;

      l1 = FUNC0 (l1);
      l2 = FUNC0 (l2);
    }

  return l1 == l2;
}