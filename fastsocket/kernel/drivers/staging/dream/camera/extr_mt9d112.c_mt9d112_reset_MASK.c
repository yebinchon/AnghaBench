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
struct msm_camera_sensor_info {int /*<<< orphan*/  sensor_reset; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(const struct msm_camera_sensor_info *dev)
{
	int rc = 0;

	rc = FUNC2(dev->sensor_reset, "mt9d112");

	if (!rc) {
		rc = FUNC0(dev->sensor_reset, 0);
		FUNC3(20);
		rc = FUNC0(dev->sensor_reset, 1);
	}

	FUNC1(dev->sensor_reset);
	return rc;
}