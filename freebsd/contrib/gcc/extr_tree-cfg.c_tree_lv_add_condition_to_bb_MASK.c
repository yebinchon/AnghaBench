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
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_NEW_STMT ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  EDGE_FALSE_VALUE ; 
 int /*<<< orphan*/  GOTO_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC6 (basic_block first_head, basic_block second_head,
                            basic_block cond_bb, void *cond_e)
{
  block_stmt_iterator bsi;
  tree goto1 = NULL_TREE;
  tree goto2 = NULL_TREE;
  tree new_cond_expr = NULL_TREE;
  tree cond_expr = (tree) cond_e;
  edge e0;

  /* Build new conditional expr */
  goto1 = FUNC2 (GOTO_EXPR, void_type_node, FUNC5 (first_head));
  goto2 = FUNC2 (GOTO_EXPR, void_type_node, FUNC5 (second_head));
  new_cond_expr = FUNC3 (COND_EXPR, void_type_node, cond_expr, goto1, goto2);

  /* Add new cond in cond_bb.  */
  bsi = FUNC1 (cond_bb);
  FUNC0 (&bsi, new_cond_expr, BSI_NEW_STMT);
  /* Adjust edges appropriately to connect new head with first head
     as well as second head.  */
  e0 = FUNC4 (cond_bb);
  e0->flags &= ~EDGE_FALLTHRU;
  e0->flags |= EDGE_FALSE_VALUE;
}