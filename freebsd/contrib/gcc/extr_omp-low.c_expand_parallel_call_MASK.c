#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct omp_region {TYPE_1__* inner; } ;
typedef  TYPE_2__* edge ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_6__ {int /*<<< orphan*/  dest; int /*<<< orphan*/  src; } ;
struct TYPE_5__ {int type; int sched_kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_CONTINUE_LINKING ; 
 size_t BUILT_IN_GOMP_PARALLEL_END ; 
 int BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START ; 
 int BUILT_IN_GOMP_PARALLEL_SECTIONS_START ; 
 int BUILT_IN_GOMP_PARALLEL_START ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  EDGE_FALSE_VALUE ; 
 int /*<<< orphan*/  EDGE_TRUE_VALUE ; 
 int /*<<< orphan*/  EQ_EXPR ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 int /*<<< orphan*/ * NULL_TREE ; 
 int /*<<< orphan*/  OMP_CLAUSE_IF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OMP_CLAUSE_NUM_THREADS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
#define  OMP_FOR 129 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
#define  OMP_SECTIONS 128 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ ** built_in_decls ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (struct omp_region*) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * null_pointer_node ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 () ; 
 int /*<<< orphan*/  FUNC31 (TYPE_2__*) ; 
 TYPE_2__* FUNC32 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unsigned_type_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC34 (struct omp_region *region, basic_block bb,
		      tree entry_stmt, tree ws_args)
{
  tree t, args, val, cond, c, list, clauses;
  block_stmt_iterator si;
  int start_ix;

  clauses = FUNC2 (entry_stmt);
  FUNC30 ();

  /* Determine what flavor of GOMP_parallel_start we will be
     emitting.  */
  start_ix = BUILT_IN_GOMP_PARALLEL_START;
  if (FUNC27 (region))
    {
      switch (region->inner->type)
	{
	case OMP_FOR:
	  start_ix = BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START
		     + region->inner->sched_kind;
	  break;
	case OMP_SECTIONS:
	  start_ix = BUILT_IN_GOMP_PARALLEL_SECTIONS_START;
	  break;
	default:
	  FUNC22 ();
	}
    }

  /* By default, the value of NUM_THREADS is zero (selected at run time)
     and there is no conditional.  */
  cond = NULL_TREE;
  val = FUNC15 (unsigned_type_node, 0);

  c = FUNC20 (clauses, OMP_CLAUSE_IF);
  if (c)
    cond = FUNC0 (c);

  c = FUNC20 (clauses, OMP_CLAUSE_NUM_THREADS);
  if (c)
    val = FUNC1 (c);

  /* Ensure 'val' is of the correct type.  */
  val = FUNC21 (unsigned_type_node, val);

  /* If we found the clause 'if (cond)', build either
     (cond != 0) or (cond ? val : 1u).  */
  if (cond)
    {
      block_stmt_iterator si;

      cond = FUNC24 (cond);

      if (FUNC26 (val))
	val = FUNC10 (EQ_EXPR, unsigned_type_node, cond,
		      FUNC15 (FUNC5 (cond), 0));
      else
	{
	  basic_block cond_bb, then_bb, else_bb;
	  edge e;
	  tree t, then_lab, else_lab, tmp;

	  tmp = FUNC19 (FUNC5 (val), NULL);
	  e = FUNC32 (bb, NULL);
	  cond_bb = e->src;
	  bb = e->dest;
	  FUNC31 (e);

	  then_bb = FUNC18 (cond_bb);
	  else_bb = FUNC18 (then_bb);
	  then_lab = FUNC17 ();
	  else_lab = FUNC17 ();

	  t = FUNC11 (COND_EXPR, void_type_node,
		      cond,
		      FUNC12 (&then_lab),
		      FUNC12 (&else_lab));

	  si = FUNC8 (cond_bb);
	  FUNC6 (&si, t, BSI_CONTINUE_LINKING);

	  si = FUNC8 (then_bb);
	  t = FUNC9 (LABEL_EXPR, void_type_node, then_lab);
	  FUNC6 (&si, t, BSI_CONTINUE_LINKING);
	  t = FUNC10 (MODIFY_EXPR, void_type_node, tmp, val);
	  FUNC6 (&si, t, BSI_CONTINUE_LINKING);

	  si = FUNC8 (else_bb);
	  t = FUNC9 (LABEL_EXPR, void_type_node, else_lab);
	  FUNC6 (&si, t, BSI_CONTINUE_LINKING);
	  t = FUNC10 (MODIFY_EXPR, void_type_node, tmp, 
	              FUNC15 (unsigned_type_node, 1));
	  FUNC6 (&si, t, BSI_CONTINUE_LINKING);

	  FUNC28 (cond_bb, then_bb, EDGE_TRUE_VALUE);
	  FUNC28 (cond_bb, else_bb, EDGE_FALSE_VALUE);
	  FUNC28 (then_bb, bb, EDGE_FALLTHRU);
	  FUNC28 (else_bb, bb, EDGE_FALLTHRU);

	  val = tmp;
	}

      list = NULL_TREE;
      val = FUNC23 (val, &list);
      si = FUNC8 (bb);
      FUNC6 (&si, list, BSI_CONTINUE_LINKING);
    }

  list = NULL_TREE;
  args = FUNC33 (NULL, val, NULL);
  t = FUNC3 (entry_stmt);
  if (t == NULL)
    t = null_pointer_node;
  else
    t = FUNC13 (t);
  args = FUNC33 (NULL, t, args);
  t = FUNC13 (FUNC4 (entry_stmt));
  args = FUNC33 (NULL, t, args);

  if (ws_args)
    args = FUNC16 (args, ws_args);

  t = built_in_decls[start_ix];
  t = FUNC14 (t, args);
  FUNC25 (t, &list);

  t = FUNC3 (entry_stmt);
  if (t == NULL)
    t = null_pointer_node;
  else
    t = FUNC13 (t);
  args = FUNC33 (NULL, t, NULL);
  t = FUNC14 (FUNC4 (entry_stmt), args);
  FUNC25 (t, &list);

  t = built_in_decls[BUILT_IN_GOMP_PARALLEL_END];
  t = FUNC14 (t, NULL);
  FUNC25 (t, &list);

  si = FUNC7 (bb);
  FUNC6 (&si, list, BSI_CONTINUE_LINKING);

  FUNC29 (NULL_TREE);
}