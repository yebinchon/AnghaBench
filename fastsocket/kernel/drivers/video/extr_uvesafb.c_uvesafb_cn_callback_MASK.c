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
struct uvesafb_task {int buf_len; } ;
struct TYPE_2__ {int buf_len; } ;
struct uvesafb_ktask {scalar_t__ ack; int /*<<< orphan*/  done; TYPE_1__ t; TYPE_1__* buf; } ;
struct netlink_skb_parms {int /*<<< orphan*/  eff_cap; } ;
struct cn_msg {size_t seq; scalar_t__ ack; int len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 size_t UVESAFB_TASKS_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct uvesafb_task*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uvfb_lock ; 
 struct uvesafb_ktask** uvfb_tasks ; 

__attribute__((used)) static void FUNC5(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
	struct uvesafb_task *utask;
	struct uvesafb_ktask *task;

	if (!FUNC0(nsp->eff_cap, CAP_SYS_ADMIN))
		return;

	if (msg->seq >= UVESAFB_TASKS_MAX)
		return;

	FUNC3(&uvfb_lock);
	task = uvfb_tasks[msg->seq];

	if (!task || msg->ack != task->ack) {
		FUNC4(&uvfb_lock);
		return;
	}

	utask = (struct uvesafb_task *)msg->data;

	/* Sanity checks for the buffer length. */
	if (task->t.buf_len < utask->buf_len ||
	    utask->buf_len > msg->len - sizeof(*utask)) {
		FUNC4(&uvfb_lock);
		return;
	}

	uvfb_tasks[msg->seq] = NULL;
	FUNC4(&uvfb_lock);

	FUNC2(&task->t, utask, sizeof(*utask));

	if (task->t.buf_len && task->buf)
		FUNC2(task->buf, utask + 1, task->t.buf_len);

	FUNC1(task->done);
	return;
}