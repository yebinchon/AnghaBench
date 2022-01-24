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
typedef  int /*<<< orphan*/ * tree ;
struct TYPE_5__ {int /*<<< orphan*/ * receiver_decl; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static tree
FUNC5 (tree var, bool by_ref, omp_context *ctx)
{
  tree x, field = FUNC3 (var, ctx);

  /* If the receiver record type was remapped in the child function,
     remap the field into the new record type.  */
  x = FUNC4 (field, ctx);
  if (x != NULL)
    field = x;

  x = FUNC2 (ctx->receiver_decl);
  x = FUNC1 (COMPONENT_REF, FUNC0 (field), x, field, NULL);
  if (by_ref)
    x = FUNC2 (x);

  return x;
}