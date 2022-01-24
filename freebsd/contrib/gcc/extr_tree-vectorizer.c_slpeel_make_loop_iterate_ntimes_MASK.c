#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int /*<<< orphan*/  nb_iterations; TYPE_1__* single_exit; int /*<<< orphan*/  latch; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  dest; } ;
typedef  scalar_t__ LOC ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int EDGE_TRUE_VALUE ; 
 int /*<<< orphan*/  GE_EXPR ; 
 int /*<<< orphan*/  GOTO_EXPR ; 
 char* FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  LT_EXPR ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNKNOWN_LOC ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct loop*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 scalar_t__ FUNC11 (struct loop*) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct loop*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct loop*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  void_type_node ; 

void
FUNC18 (struct loop *loop, tree niters)
{
  tree indx_before_incr, indx_after_incr, cond_stmt, cond;
  tree orig_cond;
  edge exit_edge = loop->single_exit;
  block_stmt_iterator loop_cond_bsi;
  block_stmt_iterator incr_bsi;
  bool insert_after;
  tree begin_label = FUNC17 (loop->latch);
  tree exit_label = FUNC17 (loop->single_exit->dest);
  tree init = FUNC9 (FUNC2 (niters), 0);
  tree step = FUNC9 (FUNC2 (niters), 1);
  tree then_label;
  tree else_label;
  LOC loop_loc;

  orig_cond = FUNC14 (loop);
  FUNC13 (orig_cond);
  loop_cond_bsi = FUNC3 (orig_cond);

  FUNC16 (loop, &incr_bsi, &insert_after);
  FUNC10 (init, step, NULL_TREE, loop,
             &incr_bsi, insert_after, &indx_before_incr, &indx_after_incr);

  if (exit_edge->flags & EDGE_TRUE_VALUE) /* 'then' edge exits the loop.  */
    {
      cond = FUNC7 (GE_EXPR, boolean_type_node, indx_after_incr, niters);
      then_label = FUNC6 (GOTO_EXPR, void_type_node, exit_label);
      else_label = FUNC6 (GOTO_EXPR, void_type_node, begin_label);
    }
  else /* 'then' edge loops back.  */
    {
      cond = FUNC7 (LT_EXPR, boolean_type_node, indx_after_incr, niters);
      then_label = FUNC6 (GOTO_EXPR, void_type_node, begin_label);
      else_label = FUNC6 (GOTO_EXPR, void_type_node, exit_label);
    }

  cond_stmt = FUNC8 (COND_EXPR, FUNC2 (orig_cond), cond,
		     then_label, else_label);
  FUNC4 (&loop_cond_bsi, cond_stmt, BSI_SAME_STMT);

  /* Remove old loop exit test:  */
  FUNC5 (&loop_cond_bsi, true);

  loop_loc = FUNC11 (loop);
  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      if (loop_loc != UNKNOWN_LOC)
        FUNC12 (dump_file, "\nloop at %s:%d: ",
                 FUNC0 (loop_loc), FUNC1 (loop_loc));
      FUNC15 (dump_file, cond_stmt, TDF_SLIM);
    }

  loop->nb_iterations = niters;
}