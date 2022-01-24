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
struct usbip_task {int /*<<< orphan*/  thread_done; int /*<<< orphan*/ * thread; int /*<<< orphan*/  (* loop_ops ) (struct usbip_task*) ;int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * current ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct usbip_task*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

int FUNC7(void *param)
{
	struct usbip_task *ut = param;

	if (!ut)
		return -EINVAL;

	FUNC4();
	FUNC3(ut->name);
	FUNC0(SIGKILL);
	ut->thread = current;
	FUNC6();

	/* srv.rb must wait for rx_thread starting */
	FUNC1(&ut->thread_done);

	/* start of while loop */
	ut->loop_ops(ut);

	/* end of loop */
	ut->thread = NULL;

	FUNC2(&ut->thread_done, 0);
}