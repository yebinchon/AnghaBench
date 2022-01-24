#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_4__ {int is_nested; struct TYPE_4__* outer; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static tree
FUNC3 (tree decl, omp_context *ctx)
{
  tree t;
  omp_context *up;

  FUNC0 (ctx->is_nested);

  for (up = ctx->outer, t = NULL; up && t == NULL; up = up->outer)
    t = FUNC2 (decl, up);

  FUNC0 (t || FUNC1 (decl));

  return t ? t : decl;
}