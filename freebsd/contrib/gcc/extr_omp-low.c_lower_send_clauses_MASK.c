#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_5__ {scalar_t__ is_nested; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 int /*<<< orphan*/  MODIFY_EXPR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
#define  OMP_CLAUSE_COPYIN 131 
 scalar_t__ FUNC2 (scalar_t__) ; 
#define  OMP_CLAUSE_FIRSTPRIVATE 130 
#define  OMP_CLAUSE_LASTPRIVATE 129 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
#define  OMP_CLAUSE_REDUCTION 128 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,TYPE_1__*) ; 
 int FUNC13 (scalar_t__,int) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC14 (tree clauses, tree *ilist, tree *olist, omp_context *ctx)
{
  tree c;

  for (c = clauses; c ; c = FUNC0 (c))
    {
      tree val, ref, x, var;
      bool by_ref, do_in = false, do_out = false;

      switch (FUNC1 (c))
	{
	case OMP_CLAUSE_FIRSTPRIVATE:
	case OMP_CLAUSE_COPYIN:
	case OMP_CLAUSE_LASTPRIVATE:
	case OMP_CLAUSE_REDUCTION:
	  break;
	default:
	  continue;
	}

      var = val = FUNC2 (c);
      if (ctx->is_nested)
	var = FUNC12 (val, ctx);

      if (FUNC1 (c) != OMP_CLAUSE_COPYIN
	  && FUNC9 (var))
	continue;
      if (FUNC11 (val))
	continue;
      by_ref = FUNC13 (val, false);

      switch (FUNC1 (c))
	{
	case OMP_CLAUSE_FIRSTPRIVATE:
	case OMP_CLAUSE_COPYIN:
	  do_in = true;
	  break;

	case OMP_CLAUSE_LASTPRIVATE:
	  if (by_ref || FUNC10 (val))
	    {
	      if (FUNC3 (c))
		continue;
	      do_in = true;
	    }
	  else
	    do_out = true;
	  break;

	case OMP_CLAUSE_REDUCTION:
	  do_in = true;
	  do_out = !(by_ref || FUNC10 (val));
	  break;

	default:
	  FUNC7 ();
	}

      if (do_in)
	{
	  ref = FUNC6 (val, ctx);
	  x = by_ref ? FUNC5 (var) : var;
	  x = FUNC4 (MODIFY_EXPR, void_type_node, ref, x);
	  FUNC8 (x, ilist);
	}

      if (do_out)
	{
	  ref = FUNC6 (val, ctx);
	  x = FUNC4 (MODIFY_EXPR, void_type_node, var, ref);
	  FUNC8 (x, olist);
	}
    }
}