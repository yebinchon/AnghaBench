
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * tree ;
struct omp_region {TYPE_1__* inner; } ;
typedef TYPE_2__* edge ;
typedef int block_stmt_iterator ;
typedef int basic_block ;
struct TYPE_6__ {int dest; int src; } ;
struct TYPE_5__ {int type; int sched_kind; } ;


 int BSI_CONTINUE_LINKING ;
 size_t BUILT_IN_GOMP_PARALLEL_END ;
 int BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START ;
 int BUILT_IN_GOMP_PARALLEL_SECTIONS_START ;
 int BUILT_IN_GOMP_PARALLEL_START ;
 int COND_EXPR ;
 int EDGE_FALLTHRU ;
 int EDGE_FALSE_VALUE ;
 int EDGE_TRUE_VALUE ;
 int EQ_EXPR ;
 int LABEL_EXPR ;
 int MODIFY_EXPR ;
 int * NULL_TREE ;
 int OMP_CLAUSE_IF ;
 int * OMP_CLAUSE_IF_EXPR (int *) ;
 int OMP_CLAUSE_NUM_THREADS ;
 int * OMP_CLAUSE_NUM_THREADS_EXPR (int *) ;

 int * OMP_PARALLEL_CLAUSES (int *) ;
 int * OMP_PARALLEL_DATA_ARG (int *) ;
 int * OMP_PARALLEL_FN (int *) ;

 int TREE_TYPE (int *) ;
 int bsi_insert_after (int *,int *,int ) ;
 int bsi_last (int ) ;
 int bsi_start (int ) ;
 int * build1 (int ,int ,int *) ;
 int * build2 (int ,int ,int *,int *) ;
 int * build3 (int ,int ,int *,int ,int ) ;
 int build_and_jump (int **) ;
 int * build_fold_addr_expr (int *) ;
 int * build_function_call_expr (int *,int *) ;
 int * build_int_cst (int ,int) ;
 int ** built_in_decls ;
 int * chainon (int *,int *) ;
 int * create_artificial_label () ;
 int create_empty_bb (int ) ;
 int * create_tmp_var (int ,int *) ;
 int * find_omp_clause (int *,int ) ;
 int * fold_convert (int ,int *) ;
 int gcc_unreachable () ;
 int * get_formal_tmp_var (int *,int **) ;
 int * gimple_boolify (int *) ;
 int gimplify_and_add (int *,int **) ;
 scalar_t__ integer_zerop (int *) ;
 scalar_t__ is_combined_parallel (struct omp_region*) ;
 int make_edge (int ,int ,int ) ;
 int * null_pointer_node ;
 int pop_gimplify_context (int *) ;
 int push_gimplify_context () ;
 int remove_edge (TYPE_2__*) ;
 TYPE_2__* split_block (int ,int *) ;
 int * tree_cons (int *,int *,int *) ;
 int unsigned_type_node ;
 int void_type_node ;

__attribute__((used)) static void
expand_parallel_call (struct omp_region *region, basic_block bb,
        tree entry_stmt, tree ws_args)
{
  tree t, args, val, cond, c, list, clauses;
  block_stmt_iterator si;
  int start_ix;

  clauses = OMP_PARALLEL_CLAUSES (entry_stmt);
  push_gimplify_context ();



  start_ix = BUILT_IN_GOMP_PARALLEL_START;
  if (is_combined_parallel (region))
    {
      switch (region->inner->type)
 {
 case 129:
   start_ix = BUILT_IN_GOMP_PARALLEL_LOOP_STATIC_START
       + region->inner->sched_kind;
   break;
 case 128:
   start_ix = BUILT_IN_GOMP_PARALLEL_SECTIONS_START;
   break;
 default:
   gcc_unreachable ();
 }
    }



  cond = NULL_TREE;
  val = build_int_cst (unsigned_type_node, 0);

  c = find_omp_clause (clauses, OMP_CLAUSE_IF);
  if (c)
    cond = OMP_CLAUSE_IF_EXPR (c);

  c = find_omp_clause (clauses, OMP_CLAUSE_NUM_THREADS);
  if (c)
    val = OMP_CLAUSE_NUM_THREADS_EXPR (c);


  val = fold_convert (unsigned_type_node, val);



  if (cond)
    {
      block_stmt_iterator si;

      cond = gimple_boolify (cond);

      if (integer_zerop (val))
 val = build2 (EQ_EXPR, unsigned_type_node, cond,
        build_int_cst (TREE_TYPE (cond), 0));
      else
 {
   basic_block cond_bb, then_bb, else_bb;
   edge e;
   tree t, then_lab, else_lab, tmp;

   tmp = create_tmp_var (TREE_TYPE (val), ((void*)0));
   e = split_block (bb, ((void*)0));
   cond_bb = e->src;
   bb = e->dest;
   remove_edge (e);

   then_bb = create_empty_bb (cond_bb);
   else_bb = create_empty_bb (then_bb);
   then_lab = create_artificial_label ();
   else_lab = create_artificial_label ();

   t = build3 (COND_EXPR, void_type_node,
        cond,
        build_and_jump (&then_lab),
        build_and_jump (&else_lab));

   si = bsi_start (cond_bb);
   bsi_insert_after (&si, t, BSI_CONTINUE_LINKING);

   si = bsi_start (then_bb);
   t = build1 (LABEL_EXPR, void_type_node, then_lab);
   bsi_insert_after (&si, t, BSI_CONTINUE_LINKING);
   t = build2 (MODIFY_EXPR, void_type_node, tmp, val);
   bsi_insert_after (&si, t, BSI_CONTINUE_LINKING);

   si = bsi_start (else_bb);
   t = build1 (LABEL_EXPR, void_type_node, else_lab);
   bsi_insert_after (&si, t, BSI_CONTINUE_LINKING);
   t = build2 (MODIFY_EXPR, void_type_node, tmp,
               build_int_cst (unsigned_type_node, 1));
   bsi_insert_after (&si, t, BSI_CONTINUE_LINKING);

   make_edge (cond_bb, then_bb, EDGE_TRUE_VALUE);
   make_edge (cond_bb, else_bb, EDGE_FALSE_VALUE);
   make_edge (then_bb, bb, EDGE_FALLTHRU);
   make_edge (else_bb, bb, EDGE_FALLTHRU);

   val = tmp;
 }

      list = NULL_TREE;
      val = get_formal_tmp_var (val, &list);
      si = bsi_start (bb);
      bsi_insert_after (&si, list, BSI_CONTINUE_LINKING);
    }

  list = NULL_TREE;
  args = tree_cons (((void*)0), val, ((void*)0));
  t = OMP_PARALLEL_DATA_ARG (entry_stmt);
  if (t == ((void*)0))
    t = null_pointer_node;
  else
    t = build_fold_addr_expr (t);
  args = tree_cons (((void*)0), t, args);
  t = build_fold_addr_expr (OMP_PARALLEL_FN (entry_stmt));
  args = tree_cons (((void*)0), t, args);

  if (ws_args)
    args = chainon (args, ws_args);

  t = built_in_decls[start_ix];
  t = build_function_call_expr (t, args);
  gimplify_and_add (t, &list);

  t = OMP_PARALLEL_DATA_ARG (entry_stmt);
  if (t == ((void*)0))
    t = null_pointer_node;
  else
    t = build_fold_addr_expr (t);
  args = tree_cons (((void*)0), t, ((void*)0));
  t = build_function_call_expr (OMP_PARALLEL_FN (entry_stmt), args);
  gimplify_and_add (t, &list);

  t = built_in_decls[BUILT_IN_GOMP_PARALLEL_END];
  t = build_function_call_expr (t, ((void*)0));
  gimplify_and_add (t, &list);

  si = bsi_last (bb);
  bsi_insert_after (&si, list, BSI_CONTINUE_LINKING);

  pop_gimplify_context (NULL_TREE);
}
