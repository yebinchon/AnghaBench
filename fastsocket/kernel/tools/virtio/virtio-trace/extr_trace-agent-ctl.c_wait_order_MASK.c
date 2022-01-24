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
struct pollfd {int fd; int /*<<< orphan*/  events; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_WAIT_MSEC ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  POLLIN ; 
 int /*<<< orphan*/  cond_wakeup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  global_run_operation ; 
 int global_sig_receive ; 
 scalar_t__ global_signal_val ; 
 int FUNC1 (struct pollfd*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(int ctl_fd)
{
	struct pollfd poll_fd;
	int ret = 0;

	while (!global_sig_receive) {
		poll_fd.fd = ctl_fd;
		poll_fd.events = POLLIN;

		ret = FUNC1(&poll_fd, 1, EVENT_WAIT_MSEC);

		if (global_signal_val) {
			global_sig_receive = true;
			FUNC3("Receive interrupt %d\n", global_signal_val);

			/* Wakes rw-threads when they are sleeping */
			if (!global_run_operation)
				FUNC4(&cond_wakeup);

			ret = -1;
			break;
		}

		if (ret < 0) {
			FUNC2("Polling error\n");
			goto error;
		}

		if (ret)
			break;
	};

	return ret;

error:
	FUNC0(EXIT_FAILURE);
}