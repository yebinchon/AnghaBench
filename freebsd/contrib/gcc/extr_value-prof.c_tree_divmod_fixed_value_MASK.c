#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  void* gcov_type ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_11__ {void* count; } ;
struct TYPE_10__ {int probability; void* count; int /*<<< orphan*/  flags; TYPE_2__* dest; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  EDGE_FALSE_VALUE ; 
 int /*<<< orphan*/  EDGE_TRUE_VALUE ; 
 int /*<<< orphan*/  GOTO_EXPR ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/  NE_EXPR ; 
 void* REG_BR_PROB_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_1__* FUNC13 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static tree
FUNC14 (tree stmt, tree operation, 
			 tree op1, tree op2, tree value, int prob, gcov_type count,
			 gcov_type all)
{
  tree stmt1, stmt2, stmt3;
  tree tmp1, tmp2, tmpv;
  tree label_decl1 = FUNC8 ();
  tree label_decl2 = FUNC8 ();
  tree label_decl3 = FUNC8 ();
  tree label1, label2, label3;
  tree bb1end, bb2end, bb3end;
  basic_block bb, bb2, bb3, bb4;
  tree optype = FUNC1 (operation);
  edge e12, e13, e23, e24, e34;
  block_stmt_iterator bsi;

  bb = FUNC2 (stmt);
  bsi = FUNC3 (stmt);

  tmpv = FUNC9 (optype, "PROF");
  tmp1 = FUNC9 (optype, "PROF");
  stmt1 = FUNC6 (MODIFY_EXPR, optype, tmpv, FUNC10 (optype, value));
  stmt2 = FUNC6 (MODIFY_EXPR, optype, tmp1, op2);
  stmt3 = FUNC7 (COND_EXPR, void_type_node,
	    FUNC6 (NE_EXPR, boolean_type_node, tmp1, tmpv),
	    FUNC5 (GOTO_EXPR, void_type_node, label_decl2),
	    FUNC5 (GOTO_EXPR, void_type_node, label_decl1));
  FUNC4 (&bsi, stmt1, BSI_SAME_STMT);
  FUNC4 (&bsi, stmt2, BSI_SAME_STMT);
  FUNC4 (&bsi, stmt3, BSI_SAME_STMT);
  bb1end = stmt3;

  tmp2 = FUNC9 (optype, "PROF");
  label1 = FUNC5 (LABEL_EXPR, void_type_node, label_decl1);
  stmt1 = FUNC6 (MODIFY_EXPR, optype, tmp2,
		  FUNC6 (FUNC0 (operation), optype, op1, tmpv));
  FUNC4 (&bsi, label1, BSI_SAME_STMT);
  FUNC4 (&bsi, stmt1, BSI_SAME_STMT);
  bb2end = stmt1;

  label2 = FUNC5 (LABEL_EXPR, void_type_node, label_decl2);
  stmt1 = FUNC6 (MODIFY_EXPR, optype, tmp2,
		  FUNC6 (FUNC0 (operation), optype, op1, op2));
  FUNC4 (&bsi, label2, BSI_SAME_STMT);
  FUNC4 (&bsi, stmt1, BSI_SAME_STMT);
  bb3end = stmt1;

  label3 = FUNC5 (LABEL_EXPR, void_type_node, label_decl3);
  FUNC4 (&bsi, label3, BSI_SAME_STMT);

  /* Fix CFG. */
  /* Edge e23 connects bb2 to bb3, etc. */
  e12 = FUNC13 (bb, bb1end);
  bb2 = e12->dest;
  bb2->count = count;
  e23 = FUNC13 (bb2, bb2end);
  bb3 = e23->dest;
  bb3->count = all - count;
  e34 = FUNC13 (bb3, bb3end);
  bb4 = e34->dest;
  bb4->count = all;

  e12->flags &= ~EDGE_FALLTHRU;
  e12->flags |= EDGE_FALSE_VALUE;
  e12->probability = prob;
  e12->count = count;

  e13 = FUNC11 (bb, bb3, EDGE_TRUE_VALUE);
  e13->probability = REG_BR_PROB_BASE - prob;
  e13->count = all - count;

  FUNC12 (e23);
  
  e24 = FUNC11 (bb2, bb4, EDGE_FALLTHRU);
  e24->probability = REG_BR_PROB_BASE;
  e24->count = count;

  e34->probability = REG_BR_PROB_BASE;
  e34->count = all - count;

  return tmp2;
}