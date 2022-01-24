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
 int MAX_EXPR ; 
 int MIN_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC6 (enum tree_code code, tree type, tree op0, tree op1)
{
  enum tree_code compl_code;

  if (code == MIN_EXPR)
    compl_code = MAX_EXPR;
  else if (code == MAX_EXPR)
    compl_code = MIN_EXPR;
  else
    FUNC2 ();

  /* MIN (MAX (a, b), b) == b.  */
  if (FUNC0 (op0) == compl_code
      && FUNC4 (FUNC1 (op0, 1), op1, 0))
    return FUNC3 (type, op1, FUNC1 (op0, 0));

  /* MIN (MAX (b, a), b) == b.  */
  if (FUNC0 (op0) == compl_code
      && FUNC4 (FUNC1 (op0, 0), op1, 0)
      && FUNC5 (FUNC1 (op0, 1), op1))
    return FUNC3 (type, op1, FUNC1 (op0, 1));

  /* MIN (a, MAX (a, b)) == a.  */
  if (FUNC0 (op1) == compl_code
      && FUNC4 (op0, FUNC1 (op1, 0), 0)
      && FUNC5 (op0, FUNC1 (op1, 1)))
    return FUNC3 (type, op0, FUNC1 (op1, 1));

  /* MIN (a, MAX (b, a)) == a.  */
  if (FUNC0 (op1) == compl_code
      && FUNC4 (op0, FUNC1 (op1, 1), 0)
      && FUNC5 (op0, FUNC1 (op1, 0)))
    return FUNC3 (type, op0, FUNC1 (op1, 0));

  return NULL_TREE;
}