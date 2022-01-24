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
struct fsg_dev {int state; int /*<<< orphan*/  lock; scalar_t__ thread_task; int /*<<< orphan*/  ep0_req_tag; int /*<<< orphan*/  exception_req_tag; } ;
typedef  enum fsg_state { ____Placeholder_fsg_state } fsg_state ;

/* Variables and functions */
 int /*<<< orphan*/  SEND_SIG_FORCED ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct fsg_dev *fsg, enum fsg_state new_state)
{
	unsigned long		flags;

	/* Do nothing if a higher-priority exception is already in progress.
	 * If a lower-or-equal priority exception is in progress, preempt it
	 * and notify the main thread by sending it a signal. */
	FUNC1(&fsg->lock, flags);
	if (fsg->state <= new_state) {
		fsg->exception_req_tag = fsg->ep0_req_tag;
		fsg->state = new_state;
		if (fsg->thread_task)
			FUNC0(SIGUSR1, SEND_SIG_FORCED,
					fsg->thread_task);
	}
	FUNC2(&fsg->lock, flags);
}