#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_5__ {int /*<<< orphan*/  dest; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_NEW_STMT ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  EDGE_FALSE_VALUE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EDGE_TRUE_VALUE ; 
 int /*<<< orphan*/  GOTO_EXPR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static edge
FUNC8 (basic_block guard_bb, tree cond, basic_block exit_bb,
		        basic_block dom_bb)
{
  block_stmt_iterator bsi;
  edge new_e, enter_e;
  tree cond_stmt, then_label, else_label;

  enter_e = FUNC0 (guard_bb, 0);
  enter_e->flags &= ~EDGE_FALLTHRU;
  enter_e->flags |= EDGE_FALSE_VALUE;
  bsi = FUNC2 (guard_bb);

  then_label = FUNC3 (GOTO_EXPR, void_type_node,
                       FUNC7 (exit_bb));
  else_label = FUNC3 (GOTO_EXPR, void_type_node,
                       FUNC7 (enter_e->dest));
  cond_stmt = FUNC4 (COND_EXPR, void_type_node, cond,
   		     then_label, else_label);
  FUNC1 (&bsi, cond_stmt, BSI_NEW_STMT);
  /* Add new edge to connect guard block to the merge/loop-exit block.  */
  new_e = FUNC5 (guard_bb, exit_bb, EDGE_TRUE_VALUE);
  FUNC6 (CDI_DOMINATORS, exit_bb, dom_bb);
  return new_e;
}