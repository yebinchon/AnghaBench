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
 scalar_t__ IDENTIFIER_NODE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

tree
FUNC5 (tree identifier, tree type)
{
  if (FUNC2 (type))
    {
      if (!identifier)
	FUNC3 ("unnamed variable or field declared void");
      else if (FUNC1 (identifier) == IDENTIFIER_NODE)
	{
	  FUNC4 (!FUNC0 (identifier));
	  FUNC3 ("variable or field %qE declared void", identifier);
	}
      else
	FUNC3 ("variable or field declared void");
      type = error_mark_node;
    }

  return type;
}