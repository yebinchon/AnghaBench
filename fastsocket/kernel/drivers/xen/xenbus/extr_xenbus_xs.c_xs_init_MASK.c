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
struct task_struct {int /*<<< orphan*/  pid; } ;
struct TYPE_2__ {int /*<<< orphan*/  watch_mutex; int /*<<< orphan*/  transaction_mutex; int /*<<< orphan*/  response_mutex; int /*<<< orphan*/  request_mutex; int /*<<< orphan*/  reply_waitq; int /*<<< orphan*/  reply_lock; int /*<<< orphan*/  reply_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct task_struct*) ; 
 int FUNC2 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct task_struct* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  xenbus_thread ; 
 int /*<<< orphan*/  xenwatch_pid ; 
 int /*<<< orphan*/  xenwatch_thread ; 
 TYPE_1__ xs_state ; 

int FUNC9(void)
{
	int err;
	struct task_struct *task;

	FUNC0(&xs_state.reply_list);
	FUNC7(&xs_state.reply_lock);
	FUNC4(&xs_state.reply_waitq);

	FUNC6(&xs_state.request_mutex);
	FUNC6(&xs_state.response_mutex);
	FUNC3(&xs_state.transaction_mutex);
	FUNC3(&xs_state.watch_mutex);

	/* Initialize the shared memory rings to talk to xenstored */
	err = FUNC8();
	if (err)
		return err;

	task = FUNC5(xenwatch_thread, NULL, "xenwatch");
	if (FUNC1(task))
		return FUNC2(task);
	xenwatch_pid = task->pid;

	task = FUNC5(xenbus_thread, NULL, "xenbus");
	if (FUNC1(task))
		return FUNC2(task);

	return 0;
}