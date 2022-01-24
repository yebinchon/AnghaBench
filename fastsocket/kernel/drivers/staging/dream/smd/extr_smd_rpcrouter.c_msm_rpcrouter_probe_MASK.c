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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  WAKE_LOCK_SUSPEND ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ initialized ; 
 int /*<<< orphan*/  local_endpoints ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  newserver_wait ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote_endpoints ; 
 int /*<<< orphan*/  rpcrouter_smdnotify ; 
 int /*<<< orphan*/  rpcrouter_wake_lock ; 
 int /*<<< orphan*/  rpcrouter_workqueue ; 
 int /*<<< orphan*/  smd_channel ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  smd_wait ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  work_read_data ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int rc;

	/* Initialize what we need to start processing */
	FUNC0(&local_endpoints);
	FUNC0(&remote_endpoints);

	FUNC3(&newserver_wait);
	FUNC3(&smd_wait);
	FUNC8(&rpcrouter_wake_lock, WAKE_LOCK_SUSPEND, "SMD_RPCCALL");

	rpcrouter_workqueue = FUNC1("rpcrouter");
	if (!rpcrouter_workqueue)
		return -ENOMEM;

	rc = FUNC5();
	if (rc < 0)
		goto fail_destroy_workqueue;

	/* Open up SMD channel 2 */
	initialized = 0;
	rc = FUNC7("SMD_RPCCALL", &smd_channel, NULL, rpcrouter_smdnotify);
	if (rc < 0)
		goto fail_remove_devices;

	FUNC6(rpcrouter_workqueue, &work_read_data);
	return 0;

 fail_remove_devices:
	FUNC4();
 fail_destroy_workqueue:
	FUNC2(rpcrouter_workqueue);
	return rc;
}