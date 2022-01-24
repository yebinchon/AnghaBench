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
struct inode {int dummy; } ;
struct file {struct adsp_device* private_data; } ;
struct adsp_device {TYPE_1__* module; scalar_t__ abort; int /*<<< orphan*/  name; } ;
struct TYPE_2__ {int /*<<< orphan*/  pmem_regions_lock; int /*<<< orphan*/  pmem_regions; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  adsp_ops ; 
 struct adsp_device* FUNC1 (struct inode*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *,struct adsp_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *filp)
{
	struct adsp_device *adev;
	int rc;

	rc = FUNC4(inode, filp);
	if (rc < 0)
		return rc;

	adev = FUNC1(inode);
	if (!adev)
		return -ENODEV;

	FUNC5("adsp_open() name = '%s'\n", adev->name);

	rc = FUNC2(adev->name, &adev->module, &adsp_ops, adev);
	if (rc)
		return rc;

	FUNC5("adsp_open() module '%s' adev %p\n", adev->name, adev);
	filp->private_data = adev;
	adev->abort = 0;
	FUNC0(&adev->module->pmem_regions);
	FUNC3(&adev->module->pmem_regions_lock);

	return 0;
}