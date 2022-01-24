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
struct perf_event_context {int /*<<< orphan*/  mutex; int /*<<< orphan*/  lock; int /*<<< orphan*/  parent_ctx; } ;
struct perf_event {struct perf_event_context* ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  SINGLE_DEPTH_NESTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC5 (struct perf_event*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct perf_event *event)
{
	struct perf_event_context *ctx = event->ctx;

	FUNC0(ctx->parent_ctx);
	/*
	 * There are two ways this annotation is useful:
	 *
	 *  1) there is a lock recursion from perf_event_exit_task
	 *     see the comment there.
	 *
	 *  2) there is a lock-inversion with mmap_sem through
	 *     perf_event_read_group(), which takes faults while
	 *     holding ctx->mutex, however this is called after
	 *     the last filedesc died, so there is no possibility
	 *     to trigger the AB-BA case.
	 */
	FUNC2(&ctx->mutex, SINGLE_DEPTH_NESTING);
	FUNC6(&ctx->lock);
	FUNC4(event);
	FUNC7(&ctx->lock);
	FUNC5(event);
	FUNC3(&ctx->mutex);

	FUNC1(event);

	return 0;
}