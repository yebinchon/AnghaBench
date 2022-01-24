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
 TYPE_2__* s5k3e2fx_ctrl ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  s5k3e2fx_sem ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(void)
{
	int rc = -EBADF;

	FUNC1(&s5k3e2fx_sem);

	FUNC5();

	FUNC2(s5k3e2fx_ctrl->sensordata->sensor_reset,
		0);
	FUNC3(s5k3e2fx_ctrl->sensordata->sensor_reset);

	FUNC4(s5k3e2fx_ctrl);
	s5k3e2fx_ctrl = NULL;

	FUNC0("s5k3e2fx_release completed\n");

	FUNC6(&s5k3e2fx_sem);
	return rc;
}