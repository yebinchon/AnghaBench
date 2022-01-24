#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  owner; } ;
struct msm_device {TYPE_1__ cdev; } ;
struct file_operations {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int ENODEV ; 
 scalar_t__ FUNC0 (struct device*) ; 
 int FUNC1 (struct device*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct file_operations const*) ; 
 struct device* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  msm_class ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 

__attribute__((used)) static int FUNC7(struct msm_device *msm,
			int node,
			dev_t devno,
			const char *suffix,
			const struct file_operations *fops)
{
	int rc = -ENODEV;

	struct device *device =
		FUNC4(msm_class, NULL,
			devno, NULL,
			"%s%d", suffix, node);

	if (FUNC0(device)) {
		rc = FUNC1(device);
		FUNC6("msm_camera: error creating device: %d\n", rc);
		return rc;
	}

	FUNC3(&msm->cdev, fops);
	msm->cdev.owner = THIS_MODULE;

	rc = FUNC2(&msm->cdev, devno, 1);
	if (rc < 0) {
		FUNC6("msm_camera: error adding cdev: %d\n", rc);
		FUNC5(msm_class, devno);
		return rc;
	}

	return rc;
}