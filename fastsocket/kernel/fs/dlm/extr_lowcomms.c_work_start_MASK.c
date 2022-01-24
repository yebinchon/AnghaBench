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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  recv_workqueue ; 
 int /*<<< orphan*/  send_workqueue ; 

__attribute__((used)) static int FUNC4(void)
{
	int error;
	recv_workqueue = FUNC1("dlm_recv");
	error = FUNC0(recv_workqueue);
	if (error) {
		FUNC3("can't start dlm_recv %d", error);
		return error;
	}

	send_workqueue = FUNC1("dlm_send");
	error = FUNC0(send_workqueue);
	if (error) {
		FUNC3("can't start dlm_send %d", error);
		FUNC2(recv_workqueue);
		return error;
	}

	return 0;
}