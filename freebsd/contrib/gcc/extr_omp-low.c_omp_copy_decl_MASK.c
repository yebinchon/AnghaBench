#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_6__ {scalar_t__ src_fn; } ;
struct TYPE_5__ {TYPE_4__ cb; struct TYPE_5__* outer; } ;
typedef  TYPE_1__ omp_context ;
typedef  int /*<<< orphan*/  copy_body_data ;
typedef  scalar_t__ DECL_CONTEXT ;

/* Variables and functions */
 scalar_t__ LABEL_DECL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ current_function_decl ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__,TYPE_1__*) ; 

__attribute__((used)) static tree
FUNC7 (tree var, copy_body_data *cb)
{
  omp_context *ctx = (omp_context *) cb;
  tree new_var;

  if (FUNC0 (var) == LABEL_DECL)
    {
      new_var = FUNC1 ();
      DECL_CONTEXT (new_var) = current_function_decl;
      FUNC3 (&ctx->cb, var, new_var);
      return new_var;
    }

  while (!FUNC5 (ctx))
    {
      ctx = ctx->outer;
      if (ctx == NULL)
	return var;
      new_var = FUNC6 (var, ctx);
      if (new_var)
	return new_var;
    }

  if (FUNC4 (var) || FUNC2 (var) != ctx->cb.src_fn)
    return var;

  return error_mark_node;
}