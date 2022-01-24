#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_9__ {int /*<<< orphan*/  stmt; struct TYPE_9__* outer; } ;
typedef  TYPE_2__ omp_context ;
struct TYPE_8__ {int /*<<< orphan*/ * (* omp_clause_assign_op ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {TYPE_1__ decls; } ;

/* Variables and functions */
 int /*<<< orphan*/  COND_EXPR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ OMP_CLAUSE_LASTPRIVATE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_5__ lang_hooks ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC15 (tree clauses, tree predicate, tree *stmt_list,
			    omp_context *ctx)
{
  tree sub_list, x, c;

  /* Early exit if there are no lastprivate clauses.  */
  clauses = FUNC9 (clauses, OMP_CLAUSE_LASTPRIVATE);
  if (clauses == NULL)
    {
      /* If this was a workshare clause, see if it had been combined
	 with its parallel.  In that case, look for the clauses on the
	 parallel statement itself.  */
      if (FUNC11 (ctx))
	return;

      ctx = ctx->outer;
      if (ctx == NULL || !FUNC11 (ctx))
	return;

      clauses = FUNC9 (FUNC3 (ctx->stmt),
				 OMP_CLAUSE_LASTPRIVATE);
      if (clauses == NULL)
	return;
    }

  sub_list = FUNC4 ();

  for (c = clauses; c ; c = FUNC0 (c))
    {
      tree var, new_var;

      if (FUNC1 (c) != OMP_CLAUSE_LASTPRIVATE)
	continue;

      var = FUNC2 (c);
      new_var = FUNC13 (var, ctx);

      x = FUNC8 (var, ctx);
      if (FUNC12 (var))
	new_var = FUNC7 (new_var);
      x = lang_hooks.decls.omp_clause_assign_op (c, x, new_var);
      FUNC5 (x, &sub_list);
    }

  if (predicate)
    x = FUNC6 (COND_EXPR, void_type_node, predicate, sub_list, NULL);
  else
    x = sub_list;

  FUNC10 (x, stmt_list);
}