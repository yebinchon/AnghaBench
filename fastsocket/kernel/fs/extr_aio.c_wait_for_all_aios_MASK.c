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
struct task_struct {int dummy; } ;
struct kioctx {int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/  wait; scalar_t__ reqs_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct task_struct*) ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct task_struct* current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static void FUNC8(struct kioctx *ctx)
{
	struct task_struct *tsk = current;
	FUNC0(wait, tsk);

	FUNC6(&ctx->ctx_lock);
	if (!ctx->reqs_active)
		goto out;

	FUNC2(&ctx->wait, &wait);
	FUNC5(tsk, TASK_UNINTERRUPTIBLE);
	while (ctx->reqs_active) {
		FUNC7(&ctx->ctx_lock);
		FUNC3();
		FUNC5(tsk, TASK_UNINTERRUPTIBLE);
		FUNC6(&ctx->ctx_lock);
	}
	FUNC1(tsk, TASK_RUNNING);
	FUNC4(&ctx->wait, &wait);

out:
	FUNC7(&ctx->ctx_lock);
}