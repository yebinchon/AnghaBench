#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* sensordata; } ;
struct TYPE_4__ {int /*<<< orphan*/  sensor_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBADF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 TYPE_2__* mt9t013_ctrl ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  mt9t013_sem ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(void)
{
	int rc = -EBADF;

	FUNC1(&mt9t013_sem);

	FUNC6();
	FUNC5();

	FUNC2(mt9t013_ctrl->sensordata->sensor_reset,
			0);
	FUNC3(mt9t013_ctrl->sensordata->sensor_reset);

	FUNC4(mt9t013_ctrl);

	FUNC7(&mt9t013_sem);
	FUNC0("mt9t013_release completed!\n");
	return rc;
}