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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int HOST_MSG_SIZE ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  SIGQUIT ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  cond_wakeup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int global_run_operation ; 
 int /*<<< orphan*/  global_sig_receive ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signal_handler ; 
 int FUNC7 (int) ; 

void *FUNC8(int ctl_fd)
{
	ssize_t rlen;
	char buf[HOST_MSG_SIZE];
	int ret;

	/* Setup signal handlers */
	FUNC6(SIGTERM, signal_handler);
	FUNC6(SIGINT, signal_handler);
	FUNC6(SIGQUIT, signal_handler);

	while (!global_sig_receive) {

		ret = FUNC7(ctl_fd);
		if (ret < 0)
			break;

		rlen = FUNC5(ctl_fd, buf, sizeof(buf));
		if (rlen < 0) {
			FUNC2("read data error in ctl thread\n");
			goto error;
		}

		if (rlen == 2 && buf[0] == '1') {
			/*
			 * If host writes '1' to a control path,
			 * this controller wakes all read/write threads.
			 */
			global_run_operation = true;
			FUNC4(&cond_wakeup);
			FUNC1("Wake up all read/write threads\n");
		} else if (rlen == 2 && buf[0] == '0') {
			/*
			 * If host writes '0' to a control path, read/write
			 * threads will wait for notification from Host.
			 */
			global_run_operation = false;
			FUNC1("Stop all read/write threads\n");
		} else
			FUNC3("Invalid host notification: %s\n", buf);
	}

	return NULL;

error:
	FUNC0(EXIT_FAILURE);
}