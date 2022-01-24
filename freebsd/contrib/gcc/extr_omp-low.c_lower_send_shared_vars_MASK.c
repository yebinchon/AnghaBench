#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ is_nested; int /*<<< orphan*/ * record_type; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC8 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC9 (scalar_t__,TYPE_1__*) ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static void
FUNC11 (tree *ilist, tree *olist, omp_context *ctx)
{
  tree var, ovar, nvar, f, x;

  if (ctx->record_type == NULL)
    return;

  for (f = FUNC3 (ctx->record_type); f ; f = FUNC2 (f))
    {
      ovar = FUNC0 (f);
      nvar = FUNC9 (ovar, ctx);
      if (!nvar || !FUNC1 (nvar))
	continue;

      var = ovar;

      /* If CTX is a nested parallel directive.  Find the immediately
	 enclosing parallel or workshare construct that contains a
	 mapping for OVAR.  */
      if (ctx->is_nested)
	var = FUNC8 (ovar, ctx);

      if (FUNC10 (ovar, true))
	{
	  x = FUNC6 (ovar, ctx);
	  var = FUNC5 (var);
	  x = FUNC4 (MODIFY_EXPR, void_type_node, x, var);
	  FUNC7 (x, ilist);
	}
      else
	{
	  x = FUNC6 (ovar, ctx);
	  x = FUNC4 (MODIFY_EXPR, void_type_node, x, var);
	  FUNC7 (x, ilist);

	  x = FUNC6 (ovar, ctx);
	  x = FUNC4 (MODIFY_EXPR, void_type_node, var, x);
	  FUNC7 (x, olist);
	}
    }
}