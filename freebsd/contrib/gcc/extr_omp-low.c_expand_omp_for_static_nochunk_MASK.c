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
typedef  void* tree ;
struct omp_region {int /*<<< orphan*/  exit; int /*<<< orphan*/  cont; int /*<<< orphan*/  entry; } ;
struct omp_for_data {scalar_t__ cond_code; void* v; void* step; void* n1; void* n2; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_CONTINUE_LINKING ; 
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 size_t BUILT_IN_OMP_GET_NUM_THREADS ; 
 size_t BUILT_IN_OMP_GET_THREAD_NUM ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  EDGE_FALSE_VALUE ; 
 int /*<<< orphan*/  EDGE_TRUE_VALUE ; 
 scalar_t__ GE_EXPR ; 
 scalar_t__ LT_EXPR ; 
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ MIN_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ MULT_EXPR ; 
 scalar_t__ NE_EXPR ; 
 scalar_t__ OMP_CONTINUE ; 
 scalar_t__ OMP_FOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PLUS_EXPR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*) ; 
 scalar_t__ TRUNC_DIV_EXPR ; 
 void* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (void*,void**) ; 
 void* boolean_type_node ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (scalar_t__,void*,void*,void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void**) ; 
 void* FUNC13 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC14 (void*,int) ; 
 int /*<<< orphan*/  FUNC15 (void**) ; 
 void** built_in_decls ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC18 (scalar_t__,void*,void*,void*) ; 
 void* FUNC19 (void*,void*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 void* FUNC21 (void*,void**) ; 
 int /*<<< orphan*/  FUNC22 (void*,void**) ; 
 scalar_t__ FUNC23 (void*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 void* void_type_node ; 

__attribute__((used)) static void
FUNC29 (struct omp_region *region,
			       struct omp_for_data *fd)
{
  tree l0, l1, l2, n, q, s0, e0, e, t, nthreads, threadid;
  tree type, list;
  basic_block entry_bb, exit_bb, seq_start_bb, body_bb, cont_bb;
  basic_block fin_bb;
  block_stmt_iterator si;

  type = FUNC2 (fd->v);

  entry_bb = region->entry;
  seq_start_bb = FUNC16 (entry_bb);
  body_bb = FUNC26 (entry_bb);
  cont_bb = region->cont;
  fin_bb = FUNC26 (cont_bb);
  exit_bb = region->exit;

  l0 = FUNC28 (seq_start_bb);
  l1 = FUNC28 (body_bb);
  l2 = FUNC28 (fin_bb);

  /* Iteration space partitioning goes in ENTRY_BB.  */
  list = FUNC3 ();

  t = built_in_decls[BUILT_IN_OMP_GET_NUM_THREADS];
  t = FUNC13 (t, NULL);
  t = FUNC19 (type, t);
  nthreads = FUNC21 (t, &list);
  
  t = built_in_decls[BUILT_IN_OMP_GET_THREAD_NUM];
  t = FUNC13 (t, NULL);
  t = FUNC19 (type, t);
  threadid = FUNC21 (t, &list);

  fd->n1 = FUNC19 (type, fd->n1);
  if (!FUNC23 (fd->n1))
    fd->n1 = FUNC21 (fd->n1, &list);

  fd->n2 = FUNC19 (type, fd->n2);
  if (!FUNC23 (fd->n2))
    fd->n2 = FUNC21 (fd->n2, &list);

  fd->step = FUNC19 (type, fd->step);
  if (!FUNC23 (fd->step))
    fd->step = FUNC21 (fd->step, &list);

  t = FUNC14 (type, (fd->cond_code == LT_EXPR ? -1 : 1));
  t = FUNC18 (PLUS_EXPR, type, fd->step, t);
  t = FUNC18 (PLUS_EXPR, type, t, fd->n2);
  t = FUNC18 (MINUS_EXPR, type, t, fd->n1);
  t = FUNC18 (TRUNC_DIV_EXPR, type, t, fd->step);
  t = FUNC19 (type, t);
  if (FUNC23 (t))
    n = t;
  else
    n = FUNC21 (t, &list);

  t = FUNC10 (TRUNC_DIV_EXPR, type, n, nthreads);
  q = FUNC21 (t, &list);

  t = FUNC10 (MULT_EXPR, type, q, nthreads);
  t = FUNC10 (NE_EXPR, type, t, n);
  t = FUNC10 (PLUS_EXPR, type, q, t);
  q = FUNC21 (t, &list);

  t = FUNC10 (MULT_EXPR, type, q, threadid);
  s0 = FUNC21 (t, &list);

  t = FUNC10 (PLUS_EXPR, type, s0, q);
  t = FUNC10 (MIN_EXPR, type, t, n);
  e0 = FUNC21 (t, &list);

  t = FUNC10 (GE_EXPR, boolean_type_node, s0, e0);
  t = FUNC11 (COND_EXPR, void_type_node, t, FUNC12 (&l2),
	      FUNC12 (&l0));
  FUNC4 (t, &list);

  si = FUNC6 (entry_bb);
  FUNC20 (FUNC1 (FUNC9 (si)) == OMP_FOR);
  FUNC5 (&si, list, BSI_SAME_STMT);
  FUNC7 (&si, true);

  /* Setup code for sequential iteration goes in SEQ_START_BB.  */
  list = FUNC3 ();

  t = FUNC19 (type, s0);
  t = FUNC10 (MULT_EXPR, type, t, fd->step);
  t = FUNC10 (PLUS_EXPR, type, t, fd->n1);
  t = FUNC10 (MODIFY_EXPR, void_type_node, fd->v, t);
  FUNC22 (t, &list);

  t = FUNC19 (type, e0);
  t = FUNC10 (MULT_EXPR, type, t, fd->step);
  t = FUNC10 (PLUS_EXPR, type, t, fd->n1);
  e = FUNC21 (t, &list);

  si = FUNC8 (seq_start_bb);
  FUNC5 (&si, list, BSI_CONTINUE_LINKING);

  /* The code controlling the sequential loop replaces the OMP_CONTINUE.  */
  list = FUNC3 ();

  t = FUNC10 (PLUS_EXPR, type, fd->v, fd->step);
  t = FUNC10 (MODIFY_EXPR, void_type_node, fd->v, t);
  FUNC22 (t, &list);

  t = FUNC10 (fd->cond_code, boolean_type_node, fd->v, e);
  t = FUNC21 (t, &list);
  t = FUNC11 (COND_EXPR, void_type_node, t, FUNC12 (&l1),
	      FUNC12 (&l2));
  FUNC4 (t, &list);

  si = FUNC6 (cont_bb);
  FUNC20 (FUNC1 (FUNC9 (si)) == OMP_CONTINUE);
  FUNC5 (&si, list, BSI_SAME_STMT);
  FUNC7 (&si, true);

  /* Replace the OMP_RETURN with a barrier, or nothing.  */
  si = FUNC6 (exit_bb);
  if (!FUNC0 (FUNC9 (si)))
    {
      list = FUNC3 ();
      FUNC15 (&list);
      FUNC5 (&si, list, BSI_SAME_STMT);
    }
  FUNC7 (&si, true);

  /* Connect all the blocks.  */
  FUNC24 (seq_start_bb, body_bb, EDGE_FALLTHRU);

  FUNC25 (FUNC27 (entry_bb));
  FUNC24 (entry_bb, fin_bb, EDGE_TRUE_VALUE);
  FUNC24 (entry_bb, seq_start_bb, EDGE_FALSE_VALUE);

  FUNC24 (cont_bb, body_bb, EDGE_TRUE_VALUE);
  FUNC17 (cont_bb, fin_bb)->flags = EDGE_FALSE_VALUE;
}