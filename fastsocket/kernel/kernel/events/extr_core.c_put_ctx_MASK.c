#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct perf_event_context {int /*<<< orphan*/  rcu_head; scalar_t__ task; struct perf_event_context* parent_ctx; int /*<<< orphan*/  refcount; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_ctx ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct perf_event_context *ctx)
{
	if (FUNC0(&ctx->refcount)) {
		if (ctx->parent_ctx)
			FUNC3(ctx->parent_ctx);
		if (ctx->task)
			FUNC2(ctx->task);
		FUNC1(&ctx->rcu_head, free_ctx);
	}
}