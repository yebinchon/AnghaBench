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
 int ARRAY_TYPE ; 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RECORD_TYPE 129 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
#define  UNION_TYPE 128 

__attribute__((used)) static bool
FUNC7 (tree type)
{
  tree x;
  switch (FUNC1 (type))
    {
    case RECORD_TYPE:
      x = FUNC4 (type);
      if (x == NULL_TREE)
	return false;
      while (FUNC0 (x) != NULL_TREE)
	x = FUNC0 (x);
      if (FUNC1 (FUNC2 (x)) == ARRAY_TYPE
	  && FUNC6 (FUNC2 (x)) == NULL_TREE
	  && FUNC3 (FUNC2 (x)) != NULL_TREE
	  && FUNC5 (FUNC3 (FUNC2 (x))) == NULL_TREE)
	return true;
      return false;
    case UNION_TYPE:
      for (x = FUNC4 (type); x != NULL_TREE; x = FUNC0 (x))
	{
	  if (FUNC7 (FUNC2 (x)))
	    return true;
	}
      return false;
    default:
    return false;
  }
}