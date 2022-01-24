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
typedef  int /*<<< orphan*/  use_operand_p ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ RETURN_EXPR ; 
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static tree
FUNC3 (tree lhs)
{
  use_operand_p immuse;
  tree immusestmt;

  if (FUNC0 (lhs) == SSA_NAME
      && FUNC2 (lhs, &immuse, &immusestmt))
    {
      if (FUNC0 (immusestmt) == RETURN_EXPR)
	immusestmt = FUNC1 (immusestmt, 0);
      if (FUNC0 (immusestmt) == MODIFY_EXPR)
	return immusestmt;
    }
  return NULL_TREE;
}