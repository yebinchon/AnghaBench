
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* tree ;
struct omp_region {int exit; int cont; int entry; } ;
struct omp_for_data {scalar_t__ cond_code; void* v; void* step; void* n1; void* n2; } ;
typedef int block_stmt_iterator ;
typedef int basic_block ;
struct TYPE_2__ {int flags; } ;


 int BSI_CONTINUE_LINKING ;
 int BSI_SAME_STMT ;
 size_t BUILT_IN_OMP_GET_NUM_THREADS ;
 size_t BUILT_IN_OMP_GET_THREAD_NUM ;
 int COND_EXPR ;
 int EDGE_FALLTHRU ;
 int EDGE_FALSE_VALUE ;
 int EDGE_TRUE_VALUE ;
 scalar_t__ GE_EXPR ;
 scalar_t__ LT_EXPR ;
 scalar_t__ MINUS_EXPR ;
 scalar_t__ MIN_EXPR ;
 scalar_t__ MODIFY_EXPR ;
 scalar_t__ MULT_EXPR ;
 scalar_t__ NE_EXPR ;
 scalar_t__ OMP_CONTINUE ;
 scalar_t__ OMP_FOR ;
 int OMP_RETURN_NOWAIT (int ) ;
 scalar_t__ PLUS_EXPR ;
 scalar_t__ TREE_CODE (int ) ;
 void* TREE_TYPE (void*) ;
 scalar_t__ TRUNC_DIV_EXPR ;
 void* alloc_stmt_list () ;
 int append_to_statement_list (void*,void**) ;
 void* boolean_type_node ;
 int bsi_insert_after (int *,void*,int ) ;
 int bsi_last (int ) ;
 int bsi_remove (int *,int) ;
 int bsi_start (int ) ;
 int bsi_stmt (int ) ;
 void* build2 (scalar_t__,void*,void*,void*) ;
 void* build3 (int ,void*,void*,int ,int ) ;
 int build_and_jump (void**) ;
 void* build_function_call_expr (void*,int *) ;
 void* build_int_cst (void*,int) ;
 int build_omp_barrier (void**) ;
 void** built_in_decls ;
 int create_empty_bb (int ) ;
 TYPE_1__* find_edge (int ,int ) ;
 void* fold_build2 (scalar_t__,void*,void*,void*) ;
 void* fold_convert (void*,void*) ;
 int gcc_assert (int) ;
 void* get_formal_tmp_var (void*,void**) ;
 int gimplify_and_add (void*,void**) ;
 scalar_t__ is_gimple_val (void*) ;
 int make_edge (int ,int ,int ) ;
 int remove_edge (int ) ;
 int single_succ (int ) ;
 int single_succ_edge (int ) ;
 void* tree_block_label (int ) ;
 void* void_type_node ;

__attribute__((used)) static void
expand_omp_for_static_nochunk (struct omp_region *region,
          struct omp_for_data *fd)
{
  tree l0, l1, l2, n, q, s0, e0, e, t, nthreads, threadid;
  tree type, list;
  basic_block entry_bb, exit_bb, seq_start_bb, body_bb, cont_bb;
  basic_block fin_bb;
  block_stmt_iterator si;

  type = TREE_TYPE (fd->v);

  entry_bb = region->entry;
  seq_start_bb = create_empty_bb (entry_bb);
  body_bb = single_succ (entry_bb);
  cont_bb = region->cont;
  fin_bb = single_succ (cont_bb);
  exit_bb = region->exit;

  l0 = tree_block_label (seq_start_bb);
  l1 = tree_block_label (body_bb);
  l2 = tree_block_label (fin_bb);


  list = alloc_stmt_list ();

  t = built_in_decls[BUILT_IN_OMP_GET_NUM_THREADS];
  t = build_function_call_expr (t, ((void*)0));
  t = fold_convert (type, t);
  nthreads = get_formal_tmp_var (t, &list);

  t = built_in_decls[BUILT_IN_OMP_GET_THREAD_NUM];
  t = build_function_call_expr (t, ((void*)0));
  t = fold_convert (type, t);
  threadid = get_formal_tmp_var (t, &list);

  fd->n1 = fold_convert (type, fd->n1);
  if (!is_gimple_val (fd->n1))
    fd->n1 = get_formal_tmp_var (fd->n1, &list);

  fd->n2 = fold_convert (type, fd->n2);
  if (!is_gimple_val (fd->n2))
    fd->n2 = get_formal_tmp_var (fd->n2, &list);

  fd->step = fold_convert (type, fd->step);
  if (!is_gimple_val (fd->step))
    fd->step = get_formal_tmp_var (fd->step, &list);

  t = build_int_cst (type, (fd->cond_code == LT_EXPR ? -1 : 1));
  t = fold_build2 (PLUS_EXPR, type, fd->step, t);
  t = fold_build2 (PLUS_EXPR, type, t, fd->n2);
  t = fold_build2 (MINUS_EXPR, type, t, fd->n1);
  t = fold_build2 (TRUNC_DIV_EXPR, type, t, fd->step);
  t = fold_convert (type, t);
  if (is_gimple_val (t))
    n = t;
  else
    n = get_formal_tmp_var (t, &list);

  t = build2 (TRUNC_DIV_EXPR, type, n, nthreads);
  q = get_formal_tmp_var (t, &list);

  t = build2 (MULT_EXPR, type, q, nthreads);
  t = build2 (NE_EXPR, type, t, n);
  t = build2 (PLUS_EXPR, type, q, t);
  q = get_formal_tmp_var (t, &list);

  t = build2 (MULT_EXPR, type, q, threadid);
  s0 = get_formal_tmp_var (t, &list);

  t = build2 (PLUS_EXPR, type, s0, q);
  t = build2 (MIN_EXPR, type, t, n);
  e0 = get_formal_tmp_var (t, &list);

  t = build2 (GE_EXPR, boolean_type_node, s0, e0);
  t = build3 (COND_EXPR, void_type_node, t, build_and_jump (&l2),
       build_and_jump (&l0));
  append_to_statement_list (t, &list);

  si = bsi_last (entry_bb);
  gcc_assert (TREE_CODE (bsi_stmt (si)) == OMP_FOR);
  bsi_insert_after (&si, list, BSI_SAME_STMT);
  bsi_remove (&si, 1);


  list = alloc_stmt_list ();

  t = fold_convert (type, s0);
  t = build2 (MULT_EXPR, type, t, fd->step);
  t = build2 (PLUS_EXPR, type, t, fd->n1);
  t = build2 (MODIFY_EXPR, void_type_node, fd->v, t);
  gimplify_and_add (t, &list);

  t = fold_convert (type, e0);
  t = build2 (MULT_EXPR, type, t, fd->step);
  t = build2 (PLUS_EXPR, type, t, fd->n1);
  e = get_formal_tmp_var (t, &list);

  si = bsi_start (seq_start_bb);
  bsi_insert_after (&si, list, BSI_CONTINUE_LINKING);


  list = alloc_stmt_list ();

  t = build2 (PLUS_EXPR, type, fd->v, fd->step);
  t = build2 (MODIFY_EXPR, void_type_node, fd->v, t);
  gimplify_and_add (t, &list);

  t = build2 (fd->cond_code, boolean_type_node, fd->v, e);
  t = get_formal_tmp_var (t, &list);
  t = build3 (COND_EXPR, void_type_node, t, build_and_jump (&l1),
       build_and_jump (&l2));
  append_to_statement_list (t, &list);

  si = bsi_last (cont_bb);
  gcc_assert (TREE_CODE (bsi_stmt (si)) == OMP_CONTINUE);
  bsi_insert_after (&si, list, BSI_SAME_STMT);
  bsi_remove (&si, 1);


  si = bsi_last (exit_bb);
  if (!OMP_RETURN_NOWAIT (bsi_stmt (si)))
    {
      list = alloc_stmt_list ();
      build_omp_barrier (&list);
      bsi_insert_after (&si, list, BSI_SAME_STMT);
    }
  bsi_remove (&si, 1);


  make_edge (seq_start_bb, body_bb, EDGE_FALLTHRU);

  remove_edge (single_succ_edge (entry_bb));
  make_edge (entry_bb, fin_bb, EDGE_TRUE_VALUE);
  make_edge (entry_bb, seq_start_bb, EDGE_FALSE_VALUE);

  make_edge (cont_bb, body_bb, EDGE_TRUE_VALUE);
  find_edge (cont_bb, fin_bb)->flags = EDGE_FALSE_VALUE;
}
