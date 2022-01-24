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
typedef  int /*<<< orphan*/  pretty_printer ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ TREE_LIST ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void
FUNC8 (pretty_printer *buffer, tree node,
			   int spc, int flags)
{
  bool wrote_arg = false;
  tree arg;

  FUNC6 (buffer);
  FUNC5 (buffer, '(');

  /* Print the argument types.  The last element in the list is a VOID_TYPE.
     The following avoids printing the last element.  */
  arg = FUNC3 (node);
  while (arg && FUNC0 (arg) && arg != error_mark_node)
    {
      wrote_arg = true;
      FUNC4 (buffer, FUNC2 (arg), spc, flags, false);
      arg = FUNC0 (arg);
      if (FUNC0 (arg) && FUNC1 (FUNC0 (arg)) == TREE_LIST)
	{
	  FUNC5 (buffer, ',');
	  FUNC6 (buffer);
	}
    }

  if (!wrote_arg)
    FUNC7 (buffer, "void");

  FUNC5 (buffer, ')');
}