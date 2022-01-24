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
typedef  int /*<<< orphan*/  tree_stmt_iterator ;
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void
FUNC7 (tree master, tree_stmt_iterator i)
{
  tree type = FUNC1 (master);

  for (; !FUNC3 (i); FUNC4 (&i))
    {
      tree handler = FUNC5 (i);
      if (FUNC1 (handler) && FUNC2 (type, FUNC1 (handler)))
	{
	  FUNC6 (0, "%Hexception of type %qT will be caught",
		   FUNC0 (handler), FUNC1 (handler));
	  FUNC6 (0, "%H   by earlier handler for %qT",
		   FUNC0 (master), type);
	  break;
	}
    }
}