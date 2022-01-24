#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int tree ;
struct loop {TYPE_2__* header; } ;
typedef  TYPE_1__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_2__* basic_block ;
struct TYPE_10__ {int aux; int /*<<< orphan*/  preds; } ;
struct TYPE_9__ {TYPE_2__* src; scalar_t__ aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 int /*<<< orphan*/  CDI_DOMINATORS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  TRUTH_AND_EXPR ; 
 scalar_t__ TRUTH_NOT_EXPR ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static basic_block
FUNC15 (struct loop *loop, 
				basic_block bb, tree *cond,
                                block_stmt_iterator *bsi)
{
  edge first_edge, second_edge;
  tree tmp_cond, new_stmts;

  FUNC9 (FUNC0 (bb->preds) == 2);
  first_edge = FUNC1 (bb, 0);
  second_edge = FUNC1 (bb, 1);

  /* Use condition based on following criteria:
     1)
       S1: x = !c ? a : b;

       S2: x = c ? b : a;

       S2 is preferred over S1. Make 'b' first_bb and use its condition.
       
     2) Do not make loop header first_bb.

     3)
       S1: x = !(c == d)? a : b;

       S21: t1 = c == d;
       S22: x = t1 ? b : a;

       S3: x = (c == d) ? b : a;

       S3 is preferred over S1 and S2*, Make 'b' first_bb and use 
       its condition.

     4) If  pred B is dominated by pred A then use pred B's condition.
        See PR23115.  */

  /* Select condition that is not TRUTH_NOT_EXPR.  */
  tmp_cond = (first_edge->src)->aux;
  if (FUNC2 (tmp_cond) == TRUTH_NOT_EXPR)
    {
      edge tmp_edge;

      tmp_edge = first_edge;
      first_edge = second_edge;
      second_edge = tmp_edge;
    }

  /* Check if FIRST_BB is loop header or not and make sure that
     FIRST_BB does not dominate SECOND_BB.  */
  if (first_edge->src == loop->header
      || FUNC7 (CDI_DOMINATORS,
			 second_edge->src, first_edge->src))
    {
      *cond = (second_edge->src)->aux;

      /* If there is a condition on an incoming edge,
	 AND it with the incoming bb predicate.  */
      if (second_edge->aux)
	*cond = FUNC6 (TRUTH_AND_EXPR, boolean_type_node,
			*cond, second_edge->aux);

      if (FUNC2 (*cond) == TRUTH_NOT_EXPR)
	/* We can be smart here and choose inverted
	   condition without switching bbs.  */
	*cond = FUNC11 (*cond);
      else
	/* Select non loop header bb.  */
	first_edge = second_edge;
    }
  else
    {
      /* FIRST_BB is not loop header */
      *cond = (first_edge->src)->aux;

      /* If there is a condition on an incoming edge,
	 AND it with the incoming bb predicate.  */
      if (first_edge->aux)
	*cond = FUNC6 (TRUTH_AND_EXPR, boolean_type_node,
			*cond, first_edge->aux);
    }

  /* Create temp. for the condition. Vectorizer prefers to have gimple
     value as condition. Various targets use different means to communicate
     condition in vector compare operation. Using gimple value allows
     compiler to emit vector compare and select RTL without exposing
     compare's result.  */
  *cond = FUNC8 (FUNC14 (*cond), &new_stmts,
				false, NULL_TREE);
  if (new_stmts)
    FUNC5 (bsi, new_stmts, BSI_SAME_STMT);
  if (!FUNC13 (*cond) && !FUNC12 (*cond))
    {
      tree new_stmt;

      new_stmt = FUNC10 (FUNC4 (*cond), FUNC14 (*cond));
      FUNC5 (bsi, new_stmt, BSI_SAME_STMT);
      *cond = FUNC3 (new_stmt, 0);
    }

  FUNC9 (*cond);

  return first_edge->src;
}