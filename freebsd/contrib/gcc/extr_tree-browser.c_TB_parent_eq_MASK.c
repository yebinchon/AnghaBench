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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4 (const void *p1, const void *p2)
{
  tree node, parent;
  node = (tree) p2;
  parent = (tree) p1;

  if (p1 == NULL || p2 == NULL)
    return 0;

  if (FUNC0 (parent))
    {

#define TEST_CHILD(N) do {               \
  if (node == TREE_OPERAND (parent, N))  \
    return 1;                            \
} while (0)

    switch (FUNC3 (FUNC2 (parent)))
      {
      case 4:
	TEST_CHILD (0);
	TEST_CHILD (1);
	TEST_CHILD (2);
	TEST_CHILD (3);
	break;

      case 3:
	TEST_CHILD (0);
	TEST_CHILD (1);
	TEST_CHILD (2);
	break;

      case 2:
	TEST_CHILD (0);
	TEST_CHILD (1);
	break;

      case 1:
	TEST_CHILD (0);
	break;

      case 0:
      default:
	/* No children: nothing to do.  */
	break;
      }
#undef TEST_CHILD
    }

  return 0;
}