#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;
typedef  TYPE_1__* edge ;
struct TYPE_4__ {scalar_t__ src; int flags; } ;

/* Variables and functions */
 scalar_t__ COND_EXPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EDGE_TRUE_VALUE ; 
 scalar_t__ ENTRY_BLOCK_PTR ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ boolean_false_node ; 
 scalar_t__ boolean_true_node ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct loop*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC7 (struct loop *loop, tree cond)
{
  edge e = FUNC3 (loop);
  tree stmt;

  while (1)
    {
      stmt = FUNC2 (e->src);
      if (stmt
	  && FUNC1 (stmt) == COND_EXPR
	  && FUNC4 (FUNC0 (stmt), cond, 0))
	return (e->flags & EDGE_TRUE_VALUE
		? boolean_true_node
		: boolean_false_node);

      if (!FUNC6 (e->src))
	return cond;

      e = FUNC5 (e->src);
      if (e->src == ENTRY_BLOCK_PTR)
	return cond;
    }
}