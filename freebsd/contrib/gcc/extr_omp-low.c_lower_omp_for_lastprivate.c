
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct omp_for_data {int cond_code; int v; int * n2; int * n1; int for_stmt; int * step; } ;
struct omp_context {int dummy; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int HOST_WIDE_INT ;


 int EQ_EXPR ;
 int GE_EXPR ;
 int LE_EXPR ;
 int LT_EXPR ;
 int MODIFY_EXPR ;
 int * OMP_FOR_CLAUSES (int ) ;
 int TREE_INT_CST_LOW (int *) ;
 int TREE_TYPE (int ) ;
 int append_to_statement_list (int *,int **) ;
 int boolean_type_node ;
 int * build2 (int,int ,int ,int *) ;
 int * build_int_cst (int ,int ) ;
 int gimplify_and_add (int *,int **) ;
 scalar_t__ host_integerp (int *,int ) ;
 int integer_zerop (int *) ;
 int lower_lastprivate_clauses (int *,int *,int **,struct omp_context*) ;
 int void_type_node ;

__attribute__((used)) static void
lower_omp_for_lastprivate (struct omp_for_data *fd, tree *body_p,
      tree *dlist, struct omp_context *ctx)
{
  tree clauses, cond, stmts, vinit, t;
  enum tree_code cond_code;

  cond_code = fd->cond_code;
  cond_code = cond_code == LT_EXPR ? GE_EXPR : LE_EXPR;



  if (host_integerp (fd->step, 0))
    {
      HOST_WIDE_INT step = TREE_INT_CST_LOW (fd->step);
      if (step == 1 || step == -1)
 cond_code = EQ_EXPR;
    }

  cond = build2 (cond_code, boolean_type_node, fd->v, fd->n2);

  clauses = OMP_FOR_CLAUSES (fd->for_stmt);
  stmts = ((void*)0);
  lower_lastprivate_clauses (clauses, cond, &stmts, ctx);
  if (stmts != ((void*)0))
    {
      append_to_statement_list (stmts, dlist);


      vinit = fd->n1;
      if (cond_code == EQ_EXPR
   && host_integerp (fd->n2, 0)
   && ! integer_zerop (fd->n2))
 vinit = build_int_cst (TREE_TYPE (fd->v), 0);



      t = build2 (MODIFY_EXPR, void_type_node, fd->v, vinit);
      gimplify_and_add (t, body_p);
    }
}
