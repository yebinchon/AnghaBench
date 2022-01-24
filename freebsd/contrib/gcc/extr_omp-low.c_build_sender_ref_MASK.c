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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_4__ {int /*<<< orphan*/  sender_decl; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 int /*<<< orphan*/  COMPONENT_REF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static tree
FUNC3 (tree var, omp_context *ctx)
{
  tree field = FUNC2 (var, ctx);
  return FUNC1 (COMPONENT_REF, FUNC0 (field),
		 ctx->sender_decl, field, NULL);
}