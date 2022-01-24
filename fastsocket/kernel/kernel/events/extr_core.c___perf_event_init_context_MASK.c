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
struct perf_event_context {int /*<<< orphan*/  refcount; int /*<<< orphan*/  event_list; int /*<<< orphan*/  flexible_groups; int /*<<< orphan*/  pinned_groups; int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct perf_event_context *ctx)
{
	FUNC3(&ctx->lock);
	FUNC2(&ctx->mutex);
	FUNC0(&ctx->pinned_groups);
	FUNC0(&ctx->flexible_groups);
	FUNC0(&ctx->event_list);
	FUNC1(&ctx->refcount, 1);
}