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
typedef  void* tree ;
struct omp_region {int /*<<< orphan*/  exit; int /*<<< orphan*/  cont; int /*<<< orphan*/  entry; } ;
struct omp_for_data {scalar_t__ cond_code; void* v; void* step; void* n1; void* chunk_size; void* n2; } ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_CONTINUE_LINKING ; 
 int /*<<< orphan*/  BSI_SAME_STMT ; 
 size_t BUILT_IN_OMP_GET_NUM_THREADS ; 
 size_t BUILT_IN_OMP_GET_THREAD_NUM ; 
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/  EDGE_FALLTHRU ; 
 int /*<<< orphan*/  EDGE_FALSE_VALUE ; 
 int /*<<< orphan*/  EDGE_TRUE_VALUE ; 
 scalar_t__ LT_EXPR ; 
 scalar_t__ MINUS_EXPR ; 
 scalar_t__ MIN_EXPR ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ MULT_EXPR ; 
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
 void* FUNC17 (scalar_t__,void*,void*,void*) ; 
 void* FUNC18 (void*,void*) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 void* FUNC20 (void*,void**) ; 
 void* FUNC21 (void*,void**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (void*,void**) ; 
 scalar_t__ FUNC23 (void*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 
 void* FUNC28 (int /*<<< orphan*/ ) ; 
 void* void_type_node ; 

__attribute__((used)) static void
FUNC29 (struct omp_region *region, struct omp_for_data *fd)
{
  tree l0, l1, l2, l3, l4, n, s0, e0, e, t;
  tree trip, nthreads, threadid;
  tree type;
  basic_block entry_bb, exit_bb, body_bb, seq_start_bb, iter_part_bb;
  basic_block trip_update_bb, cont_bb, fin_bb;
  tree list;
  block_stmt_iterator si;

  type = FUNC2 (fd->v);

  entry_bb = region->entry;
  iter_part_bb = FUNC16 (entry_bb);
  seq_start_bb = FUNC16 (iter_part_bb);
  body_bb = FUNC26 (entry_bb);
  cont_bb = region->cont;
  trip_update_bb = FUNC16 (cont_bb);
  fin_bb = FUNC26 (cont_bb);
  exit_bb = region->exit;

  l0 = FUNC28 (iter_part_bb);
  l1 = FUNC28 (seq_start_bb);
  l2 = FUNC28 (body_bb);
  l3 = FUNC28 (trip_update_bb);
  l4 = FUNC28 (fin_bb);

  /* Trip and adjustment setup goes in ENTRY_BB.  */
  list = FUNC3 ();

  t = built_in_decls[BUILT_IN_OMP_GET_NUM_THREADS];
  t = FUNC13 (t, NULL);
  t = FUNC18 (type, t);
  nthreads = FUNC20 (t, &list);
  
  t = built_in_decls[BUILT_IN_OMP_GET_THREAD_NUM];
  t = FUNC13 (t, NULL);
  t = FUNC18 (type, t);
  threadid = FUNC20 (t, &list);

  fd->n1 = FUNC18 (type, fd->n1);
  if (!FUNC23 (fd->n1))
    fd->n1 = FUNC20 (fd->n1, &list);

  fd->n2 = FUNC18 (type, fd->n2);
  if (!FUNC23 (fd->n2))
    fd->n2 = FUNC20 (fd->n2, &list);

  fd->step = FUNC18 (type, fd->step);
  if (!FUNC23 (fd->step))
    fd->step = FUNC20 (fd->step, &list);

  fd->chunk_size = FUNC18 (type, fd->chunk_size);
  if (!FUNC23 (fd->chunk_size))
    fd->chunk_size = FUNC20 (fd->chunk_size, &list);

  t = FUNC14 (type, (fd->cond_code == LT_EXPR ? -1 : 1));
  t = FUNC17 (PLUS_EXPR, type, fd->step, t);
  t = FUNC17 (PLUS_EXPR, type, t, fd->n2);
  t = FUNC17 (MINUS_EXPR, type, t, fd->n1);
  t = FUNC17 (TRUNC_DIV_EXPR, type, t, fd->step);
  t = FUNC18 (type, t);
  if (FUNC23 (t))
    n = t;
  else
    n = FUNC20 (t, &list);

  t = FUNC14 (type, 0);
  trip = FUNC21 (t, &list, NULL);

  si = FUNC6 (entry_bb);
  FUNC19 (FUNC1 (FUNC9 (si)) == OMP_FOR);
  FUNC5 (&si, list, BSI_SAME_STMT);
  FUNC7 (&si, true);

  /* Iteration space partitioning goes in ITER_PART_BB.  */
  list = FUNC3 ();

  t = FUNC10 (MULT_EXPR, type, trip, nthreads);
  t = FUNC10 (PLUS_EXPR, type, t, threadid);
  t = FUNC10 (MULT_EXPR, type, t, fd->chunk_size);
  s0 = FUNC20 (t, &list);

  t = FUNC10 (PLUS_EXPR, type, s0, fd->chunk_size);
  t = FUNC10 (MIN_EXPR, type, t, n);
  e0 = FUNC20 (t, &list);

  t = FUNC10 (LT_EXPR, boolean_type_node, s0, n);
  t = FUNC11 (COND_EXPR, void_type_node, t,
	      FUNC12 (&l1), FUNC12 (&l4));
  FUNC4 (t, &list);

  si = FUNC8 (iter_part_bb);
  FUNC5 (&si, list, BSI_CONTINUE_LINKING);

  /* Setup code for sequential iteration goes in SEQ_START_BB.  */
  list = FUNC3 ();

  t = FUNC18 (type, s0);
  t = FUNC10 (MULT_EXPR, type, t, fd->step);
  t = FUNC10 (PLUS_EXPR, type, t, fd->n1);
  t = FUNC10 (MODIFY_EXPR, void_type_node, fd->v, t);
  FUNC22 (t, &list);

  t = FUNC18 (type, e0);
  t = FUNC10 (MULT_EXPR, type, t, fd->step);
  t = FUNC10 (PLUS_EXPR, type, t, fd->n1);
  e = FUNC20 (t, &list);

  si = FUNC8 (seq_start_bb);
  FUNC5 (&si, list, BSI_CONTINUE_LINKING);

  /* The code controlling the sequential loop goes in CONT_BB,
     replacing the OMP_CONTINUE.  */
  list = FUNC3 ();

  t = FUNC10 (PLUS_EXPR, type, fd->v, fd->step);
  t = FUNC10 (MODIFY_EXPR, void_type_node, fd->v, t);
  FUNC22 (t, &list);

  t = FUNC10 (fd->cond_code, boolean_type_node, fd->v, e);
  t = FUNC20 (t, &list);
  t = FUNC11 (COND_EXPR, void_type_node, t,
	      FUNC12 (&l2), FUNC12 (&l3));
  FUNC4 (t, &list);
  
  si = FUNC6 (cont_bb);
  FUNC19 (FUNC1 (FUNC9 (si)) == OMP_CONTINUE);
  FUNC5 (&si, list, BSI_SAME_STMT);
  FUNC7 (&si, true);

  /* Trip update code goes into TRIP_UPDATE_BB.  */
  list = FUNC3 ();

  t = FUNC14 (type, 1);
  t = FUNC10 (PLUS_EXPR, type, trip, t);
  t = FUNC10 (MODIFY_EXPR, void_type_node, trip, t);
  FUNC22 (t, &list);

  si = FUNC8 (trip_update_bb);
  FUNC5 (&si, list, BSI_CONTINUE_LINKING);

  /* Replace the OMP_RETURN with a barrier, or nothing.  */
  si = FUNC6 (exit_bb);
  if (!FUNC0 (FUNC9 (si)))
    {
      list = FUNC3 ();
      FUNC15 (&list);
      FUNC5 (&si, list, BSI_SAME_STMT);
    }
  FUNC7 (&si, true);

  /* Connect the new blocks.  */
  FUNC25 (FUNC27 (entry_bb));
  FUNC24 (entry_bb, iter_part_bb, EDGE_FALLTHRU);

  FUNC24 (iter_part_bb, seq_start_bb, EDGE_TRUE_VALUE);
  FUNC24 (iter_part_bb, fin_bb, EDGE_FALSE_VALUE);

  FUNC24 (seq_start_bb, body_bb, EDGE_FALLTHRU);

  FUNC25 (FUNC27 (cont_bb));
  FUNC24 (cont_bb, body_bb, EDGE_TRUE_VALUE);
  FUNC24 (cont_bb, trip_update_bb, EDGE_FALSE_VALUE);

  FUNC24 (trip_update_bb, iter_part_bb, EDGE_FALLTHRU);
}