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
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  terminate_node ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6 (tree *expr_p, tree *pre_p)
{
  tree stmt = *expr_p;
  tree temp = FUNC5 (stmt, NULL);
  tree body = FUNC0 (stmt, 0);

  FUNC4 (&body);

  stmt = FUNC3 (body, NULL_TREE,
				 FUNC2 (terminate_node, NULL_TREE));

  if (temp)
    {
      FUNC1 (stmt, pre_p);
      *expr_p = temp;
    }
  else
    *expr_p = stmt;
}