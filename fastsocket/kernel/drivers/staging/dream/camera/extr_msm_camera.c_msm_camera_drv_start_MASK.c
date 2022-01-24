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
struct msm_sync {int /*<<< orphan*/  list; } ;
struct msm_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int MSM_MAX_CAMERA_SENSORS ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct msm_device*) ; 
 struct msm_device* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ msm_class ; 
 int FUNC8 (struct msm_device*,struct msm_sync*,int) ; 
 int /*<<< orphan*/  msm_devno ; 
 int /*<<< orphan*/  msm_sensors ; 
 int /*<<< orphan*/  FUNC9 (struct msm_sync*) ; 
 int FUNC10 (struct msm_sync*,struct platform_device*,int (*) (struct msm_camera_sensor_info const*,struct msm_sensor_ctrl*)) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

int FUNC12(struct platform_device *dev,
		int (*sensor_probe)(const struct msm_camera_sensor_info *,
			struct msm_sensor_ctrl *))
{
	struct msm_device *pmsm = NULL;
	struct msm_sync *sync;
	int rc = -ENODEV;
	static int camera_node;

	if (camera_node >= MSM_MAX_CAMERA_SENSORS) {
		FUNC11("msm_camera: too many camera sensors\n");
		return rc;
	}

	if (!msm_class) {
		/* There are three device nodes per sensor */
		rc = FUNC3(&msm_devno, 0,
				3 * MSM_MAX_CAMERA_SENSORS,
				"msm_camera");
		if (rc < 0) {
			FUNC11("msm_camera: failed to allocate chrdev: %d\n",
				rc);
			return rc;
		}

		msm_class = FUNC4(THIS_MODULE, "msm_camera");
		if (FUNC1(msm_class)) {
			rc = FUNC2(msm_class);
			FUNC11("msm_camera: create device class failed: %d\n",
				rc);
			return rc;
		}
	}

	pmsm = FUNC6(sizeof(struct msm_device) * 3 +
			sizeof(struct msm_sync), GFP_ATOMIC);
	if (!pmsm)
		return -ENOMEM;
	sync = (struct msm_sync *)(pmsm + 3);

	rc = FUNC10(sync, dev, sensor_probe);
	if (rc < 0) {
		FUNC5(pmsm);
		return rc;
	}

	FUNC0("setting camera node %d\n", camera_node);
	rc = FUNC8(pmsm, sync, camera_node);
	if (rc < 0) {
		FUNC9(sync);
		FUNC5(pmsm);
		return rc;
	}

	camera_node++;
	FUNC7(&sync->list, &msm_sensors);
	return rc;
}