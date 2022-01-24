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
struct file_operations {int /*<<< orphan*/  owner; } ;
struct char_device_struct {int major; struct cdev* cdev; } ;
struct cdev {int /*<<< orphan*/  kobj; struct file_operations const* ops; int /*<<< orphan*/  owner; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct char_device_struct*) ; 
 int /*<<< orphan*/  FUNC1 (int,unsigned int) ; 
 int FUNC2 (struct char_device_struct*) ; 
 struct char_device_struct* FUNC3 (unsigned int,unsigned int,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int,unsigned int,unsigned int) ; 
 int FUNC5 (struct cdev*,int /*<<< orphan*/ ,unsigned int) ; 
 struct cdev* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char const*) ; 

int FUNC10(unsigned int major, unsigned int baseminor,
		      unsigned int count, const char *name,
		      const struct file_operations *fops)
{
	struct char_device_struct *cd;
	struct cdev *cdev;
	int err = -ENOMEM;

	cd = FUNC3(major, baseminor, count, name);
	if (FUNC0(cd))
		return FUNC2(cd);
	
	cdev = FUNC6();
	if (!cdev)
		goto out2;

	cdev->owner = fops->owner;
	cdev->ops = fops;
	FUNC9(&cdev->kobj, "%s", name);
		
	err = FUNC5(cdev, FUNC1(cd->major, baseminor), count);
	if (err)
		goto out;

	cd->cdev = cdev;

	return major ? 0 : cd->major;
out:
	FUNC8(&cdev->kobj);
out2:
	FUNC7(FUNC4(cd->major, baseminor, count));
	return err;
}