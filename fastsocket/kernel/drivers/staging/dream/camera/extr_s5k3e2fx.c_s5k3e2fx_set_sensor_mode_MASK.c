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
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
#define  SENSOR_PREVIEW_MODE 130 
#define  SENSOR_RAW_SNAPSHOT_MODE 129 
#define  SENSOR_SNAPSHOT_MODE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 

__attribute__((used)) static int32_t FUNC3(int mode, int res)
{
	int32_t rc = 0;

	switch (mode) {
	case SENSOR_PREVIEW_MODE:
		rc = FUNC2(mode, res);
		break;

	case SENSOR_SNAPSHOT_MODE:
		rc = FUNC1(mode);
		break;

	case SENSOR_RAW_SNAPSHOT_MODE:
		rc = FUNC0(mode);
		break;

	default:
		rc = -EINVAL;
		break;
	}

	return rc;
}