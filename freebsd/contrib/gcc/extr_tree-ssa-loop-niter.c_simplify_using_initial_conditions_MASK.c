#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {scalar_t__ header; } ;
typedef  TYPE_1__* edge ;
typedef  scalar_t__ basic_block ;
struct TYPE_3__ {int flags; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int EDGE_FALSE_VALUE ; 
 int EDGE_TRUE_VALUE ; 
 scalar_t__ ENTRY_BLOCK_PTR ; 
 scalar_t__ INTEGER_CST ; 
 int MAX_DOMINATORS_TO_WALK ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 int /*<<< orphan*/  boolean_type_node ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static tree
FUNC9 (struct loop *loop, tree expr,
				   tree *conds_used)
{
  edge e;
  basic_block bb;
  tree exp, cond;
  int cnt = 0;

  if (FUNC1 (expr) == INTEGER_CST)
    return expr;

  /* Limit walking the dominators to avoid quadraticness in
     the number of BBs times the number of loops in degenerate
     cases.  */
  for (bb = loop->header;
       bb != ENTRY_BLOCK_PTR && cnt < MAX_DOMINATORS_TO_WALK;
       bb = FUNC3 (CDI_DOMINATORS, bb))
    {
      if (!FUNC7 (bb))
	continue;
      e = FUNC6 (bb);

      if (!(e->flags & (EDGE_TRUE_VALUE | EDGE_FALSE_VALUE)))
	continue;

      cond = FUNC0 (FUNC5 (e->src));
      if (e->flags & EDGE_FALSE_VALUE)
	cond = FUNC4 (cond);
      exp = FUNC8 (cond, expr);

      if (exp != expr)
	*conds_used = FUNC2 (TRUTH_AND_EXPR,
				   boolean_type_node,
				   *conds_used,
				   cond);

      expr = exp;
      ++cnt;
    }

  return expr;
}