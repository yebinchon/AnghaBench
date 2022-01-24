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
 scalar_t__ IDENTIFIER_NODE ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (char const*) ; 

tree
FUNC6 (const char *attr_name, tree list)
{
  tree l;
  size_t attr_len = FUNC5 (attr_name);

  for (l = list; l; l = FUNC0 (l))
    {
      FUNC3 (FUNC1 (FUNC2 (l)) == IDENTIFIER_NODE);
      if (FUNC4 (attr_name, attr_len, FUNC2 (l)))
	return l;
    }

  return NULL_TREE;
}