
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * tree ;
struct TYPE_9__ {int stmt; struct TYPE_9__* outer; } ;
typedef TYPE_2__ omp_context ;
struct TYPE_8__ {int * (* omp_clause_assign_op ) (int *,int *,int *) ;} ;
struct TYPE_10__ {TYPE_1__ decls; } ;


 int COND_EXPR ;
 int * OMP_CLAUSE_CHAIN (int *) ;
 scalar_t__ OMP_CLAUSE_CODE (int *) ;
 int * OMP_CLAUSE_DECL (int *) ;
 scalar_t__ OMP_CLAUSE_LASTPRIVATE ;
 int * OMP_PARALLEL_CLAUSES (int ) ;
 int * alloc_stmt_list () ;
 int append_to_statement_list (int *,int **) ;
 int * build3 (int ,int ,int *,int *,int *) ;
 int * build_fold_indirect_ref (int *) ;
 int * build_outer_var_ref (int *,TYPE_2__*) ;
 int * find_omp_clause (int *,scalar_t__) ;
 int gimplify_and_add (int *,int **) ;
 scalar_t__ is_parallel_ctx (TYPE_2__*) ;
 scalar_t__ is_reference (int *) ;
 TYPE_5__ lang_hooks ;
 int * lookup_decl (int *,TYPE_2__*) ;
 int * stub1 (int *,int *,int *) ;
 int void_type_node ;

__attribute__((used)) static void
lower_lastprivate_clauses (tree clauses, tree predicate, tree *stmt_list,
       omp_context *ctx)
{
  tree sub_list, x, c;


  clauses = find_omp_clause (clauses, OMP_CLAUSE_LASTPRIVATE);
  if (clauses == ((void*)0))
    {



      if (is_parallel_ctx (ctx))
 return;

      ctx = ctx->outer;
      if (ctx == ((void*)0) || !is_parallel_ctx (ctx))
 return;

      clauses = find_omp_clause (OMP_PARALLEL_CLAUSES (ctx->stmt),
     OMP_CLAUSE_LASTPRIVATE);
      if (clauses == ((void*)0))
 return;
    }

  sub_list = alloc_stmt_list ();

  for (c = clauses; c ; c = OMP_CLAUSE_CHAIN (c))
    {
      tree var, new_var;

      if (OMP_CLAUSE_CODE (c) != OMP_CLAUSE_LASTPRIVATE)
 continue;

      var = OMP_CLAUSE_DECL (c);
      new_var = lookup_decl (var, ctx);

      x = build_outer_var_ref (var, ctx);
      if (is_reference (var))
 new_var = build_fold_indirect_ref (new_var);
      x = lang_hooks.decls.omp_clause_assign_op (c, x, new_var);
      append_to_statement_list (x, &sub_list);
    }

  if (predicate)
    x = build3 (COND_EXPR, void_type_node, predicate, sub_list, ((void*)0));
  else
    x = sub_list;

  gimplify_and_add (x, stmt_list);
}
