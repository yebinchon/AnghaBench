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
typedef  scalar_t__ tree ;
struct TYPE_9__ {scalar_t__ is_nested; } ;
typedef  TYPE_2__ omp_context ;
struct TYPE_8__ {scalar_t__ (* omp_clause_assign_op ) (scalar_t__,scalar_t__,scalar_t__) ;} ;
struct TYPE_10__ {TYPE_1__ decls; } ;

/* Variables and functions */
 int /*<<< orphan*/  MODIFY_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ OMP_CLAUSE_COPYPRIVATE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int,TYPE_2__*) ; 
 scalar_t__ FUNC7 (scalar_t__,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 TYPE_5__ lang_hooks ; 
 scalar_t__ FUNC10 (scalar_t__,TYPE_2__*) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__,scalar_t__) ; 
 int FUNC12 (scalar_t__,int) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC13 (tree clauses, tree *slist, tree *rlist,
			    omp_context *ctx)
{
  tree c;

  for (c = clauses; c ; c = FUNC0 (c))
    {
      tree var, ref, x;
      bool by_ref;

      if (FUNC1 (c) != OMP_CLAUSE_COPYPRIVATE)
	continue;

      var = FUNC2 (c);
      by_ref = FUNC12 (var, false);

      ref = FUNC7 (var, ctx);
      x = (ctx->is_nested) ? FUNC10 (var, ctx) : var;
      x = by_ref ? FUNC4 (x) : x;
      x = FUNC3 (MODIFY_EXPR, void_type_node, ref, x);
      FUNC8 (x, slist);

      ref = FUNC6 (var, by_ref, ctx);
      if (FUNC9 (var))
	{
	  ref = FUNC5 (ref);
	  var = FUNC5 (var);
	}
      x = lang_hooks.decls.omp_clause_assign_op (c, var, ref);
      FUNC8 (x, rlist);
    }
}