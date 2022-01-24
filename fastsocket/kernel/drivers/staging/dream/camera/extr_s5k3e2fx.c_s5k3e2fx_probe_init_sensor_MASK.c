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
typedef  scalar_t__ uint16_t ;
struct msm_camera_sensor_info {int /*<<< orphan*/  sensor_reset; } ;
typedef  int int32_t ;
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int ENODEV ; 
 scalar_t__ S5K3E2FX_MODEL_ID ; 
 int /*<<< orphan*/  S5K3E2FX_REG_MODEL_ID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* s5k3e2fx_client ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_camera_sensor_info const*) ; 

__attribute__((used)) static int FUNC6(const struct msm_camera_sensor_info *data)
{
	int32_t  rc;
	uint16_t chipid = 0;

	rc = FUNC2(data->sensor_reset, "s5k3e2fx");
	if (!rc)
		FUNC1(data->sensor_reset, 1);
	else
		goto init_probe_done;

	FUNC3(20);

	FUNC0("s5k3e2fx_sensor_init(): reseting sensor.\n");

	rc = FUNC4(s5k3e2fx_client->addr,
		S5K3E2FX_REG_MODEL_ID, &chipid);
	if (rc < 0)
		goto init_probe_fail;

	if (chipid != S5K3E2FX_MODEL_ID) {
		FUNC0("S5K3E2FX wrong model_id = 0x%x\n", chipid);
		rc = -ENODEV;
		goto init_probe_fail;
	}

	goto init_probe_done;

init_probe_fail:
	FUNC5(data);
init_probe_done:
	return rc;
}