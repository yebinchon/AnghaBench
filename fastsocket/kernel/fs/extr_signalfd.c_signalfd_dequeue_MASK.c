#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct signalfd_ctx {int /*<<< orphan*/  sigmask; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  siginfo_t ;
struct TYPE_7__ {TYPE_1__* sighand; } ;
struct TYPE_6__ {int /*<<< orphan*/  signalfd_wqh; int /*<<< orphan*/  siglock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* current ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wait ; 

__attribute__((used)) static ssize_t FUNC10(struct signalfd_ctx *ctx, siginfo_t *info,
				int nonblock)
{
	ssize_t ret;
	FUNC0(wait, current);

	FUNC8(&current->sighand->siglock);
	ret = FUNC3(current, &ctx->sigmask, info);
	switch (ret) {
	case 0:
		if (!nonblock)
			break;
		ret = -EAGAIN;
	default:
		FUNC9(&current->sighand->siglock);
		return ret;
	}

	FUNC2(&current->sighand->signalfd_wqh, &wait);
	for (;;) {
		FUNC6(TASK_INTERRUPTIBLE);
		ret = FUNC3(current, &ctx->sigmask, info);
		if (ret != 0)
			break;
		if (FUNC7(current)) {
			ret = -ERESTARTSYS;
			break;
		}
		FUNC9(&current->sighand->siglock);
		FUNC5();
		FUNC8(&current->sighand->siglock);
	}
	FUNC9(&current->sighand->siglock);

	FUNC4(&current->sighand->signalfd_wqh, &wait);
	FUNC1(TASK_RUNNING);

	return ret;
}