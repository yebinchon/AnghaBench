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
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct loop*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10 (struct loop *loop, tree stmt, tree cond,
			   block_stmt_iterator *bsi)
{
  tree c, c2;
  edge true_edge, false_edge;

  FUNC7 (FUNC1 (stmt) == COND_EXPR);

  c = FUNC0 (stmt);

  FUNC6 (FUNC3 (stmt),
 				       &true_edge, &false_edge);

  /* Add new condition into destination's predicate list.  */

  /* If 'c' is true then TRUE_EDGE is taken.  */
  FUNC2 (loop, true_edge, cond,
			     FUNC9 (c), bsi);

  /* If 'c' is false then FALSE_EDGE is taken.  */
  c2 = FUNC8 (FUNC9 (c));
  FUNC2 (loop, false_edge, cond, c2, bsi);

  /* Now this conditional statement is redundant. Remove it.
     But, do not remove exit condition! Update exit condition
     using new condition.  */
  if (!FUNC4 (loop, FUNC3 (stmt)))
    {
      FUNC5 (bsi, true);
      cond = NULL_TREE;
    }
  return;
}