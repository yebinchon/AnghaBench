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
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;

/* Variables and functions */
 scalar_t__ MODIFY_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC3 (tree name, enum tree_code opcode)
{
  tree stmt = FUNC0 (name);
  tree rhs;

  if (FUNC1 (stmt) != MODIFY_EXPR)
    return NULL_TREE;

  rhs = FUNC2 (stmt, 1);
  if (FUNC1 (rhs) == opcode)
    return FUNC2 (rhs, 0);
  return NULL_TREE;
}