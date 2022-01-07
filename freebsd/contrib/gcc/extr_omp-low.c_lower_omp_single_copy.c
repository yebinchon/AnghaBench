
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_4__ {void* sender_decl; void* receiver_decl; int * record_type; } ;
typedef TYPE_1__ omp_context ;


 size_t BUILT_IN_GOMP_SINGLE_COPY_END ;
 size_t BUILT_IN_GOMP_SINGLE_COPY_START ;
 int COND_EXPR ;
 int EQ_EXPR ;
 int LABEL_EXPR ;
 int MODIFY_EXPR ;
 int * OMP_SINGLE_BODY (int *) ;
 int OMP_SINGLE_CLAUSES (int *) ;
 int append_to_statement_list (int *,int **) ;
 int boolean_type_node ;
 int * build1 (int ,int ,int *) ;
 int * build2 (int ,int ,void*,int *) ;
 int * build3 (int ,int ,int *,int *,int *) ;
 int * build_and_jump (int **) ;
 int * build_fold_addr_expr (void*) ;
 int * build_function_call_expr (int *,int *) ;
 int * build_int_cst (int *,int ) ;
 int * build_pointer_type (int *) ;
 int ** built_in_decls ;
 int * create_artificial_label () ;
 void* create_tmp_var (int *,char*) ;
 int * fold_convert (int *,int *) ;
 int gimplify_and_add (int *,int **) ;
 int lower_copyprivate_clauses (int ,int **,int **,TYPE_1__*) ;
 int * tree_cons (int *,int *,int *) ;
 int void_type_node ;

__attribute__((used)) static void
lower_omp_single_copy (tree single_stmt, tree *pre_p, omp_context *ctx)
{
  tree ptr_type, t, args, l0, l1, l2, copyin_seq;

  ctx->sender_decl = create_tmp_var (ctx->record_type, ".omp_copy_o");

  ptr_type = build_pointer_type (ctx->record_type);
  ctx->receiver_decl = create_tmp_var (ptr_type, ".omp_copy_i");

  l0 = create_artificial_label ();
  l1 = create_artificial_label ();
  l2 = create_artificial_label ();

  t = built_in_decls[BUILT_IN_GOMP_SINGLE_COPY_START];
  t = build_function_call_expr (t, ((void*)0));
  t = fold_convert (ptr_type, t);
  t = build2 (MODIFY_EXPR, void_type_node, ctx->receiver_decl, t);
  gimplify_and_add (t, pre_p);

  t = build2 (EQ_EXPR, boolean_type_node, ctx->receiver_decl,
       build_int_cst (ptr_type, 0));
  t = build3 (COND_EXPR, void_type_node, t,
       build_and_jump (&l0), build_and_jump (&l1));
  gimplify_and_add (t, pre_p);

  t = build1 (LABEL_EXPR, void_type_node, l0);
  gimplify_and_add (t, pre_p);

  append_to_statement_list (OMP_SINGLE_BODY (single_stmt), pre_p);

  copyin_seq = ((void*)0);
  lower_copyprivate_clauses (OMP_SINGLE_CLAUSES (single_stmt), pre_p,
         &copyin_seq, ctx);

  t = build_fold_addr_expr (ctx->sender_decl);
  args = tree_cons (((void*)0), t, ((void*)0));
  t = built_in_decls[BUILT_IN_GOMP_SINGLE_COPY_END];
  t = build_function_call_expr (t, args);
  gimplify_and_add (t, pre_p);

  t = build_and_jump (&l2);
  gimplify_and_add (t, pre_p);

  t = build1 (LABEL_EXPR, void_type_node, l1);
  gimplify_and_add (t, pre_p);

  append_to_statement_list (copyin_seq, pre_p);

  t = build1 (LABEL_EXPR, void_type_node, l2);
  gimplify_and_add (t, pre_p);
}
