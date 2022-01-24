#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  work; } ;
struct kioctx {int /*<<< orphan*/  rcu_head; int /*<<< orphan*/ * mm; TYPE_1__ wq; int /*<<< orphan*/  reqs_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kioctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ctx_rcu_free ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,struct kioctx*) ; 

__attribute__((used)) static void FUNC7(struct kioctx *ctx)
{
	FUNC0(ctx->reqs_active);

	FUNC3(&ctx->wq);
	FUNC4(&ctx->wq.work);
	FUNC1(ctx);
	FUNC5(ctx->mm);
	ctx->mm = NULL;
	FUNC6("__put_ioctx: freeing %p\n", ctx);
	FUNC2(&ctx->rcu_head, ctx_rcu_free);
}