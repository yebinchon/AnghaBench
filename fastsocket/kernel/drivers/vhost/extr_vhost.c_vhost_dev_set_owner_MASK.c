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
struct vhost_dev {int /*<<< orphan*/ * mm; struct task_struct* worker; } ;
struct task_struct {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (struct task_struct*) ; 
 int FUNC1 (struct task_struct*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_1__*) ; 
 struct task_struct* FUNC3 (int /*<<< orphan*/ ,struct vhost_dev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct vhost_dev*) ; 
 int FUNC7 (struct vhost_dev*) ; 
 int /*<<< orphan*/  vhost_worker ; 
 int /*<<< orphan*/  FUNC8 (struct task_struct*) ; 

__attribute__((used)) static long FUNC9(struct vhost_dev *dev)
{
	struct task_struct *worker;
	int err;
	/* Is there an owner already? */
	if (dev->mm) {
		err = -EBUSY;
		goto err_mm;
	}
	/* No owner, become one */
	dev->mm = FUNC2(current);
	worker = FUNC3(vhost_worker, dev, "vhost-%d", current->pid);
	if (FUNC0(worker)) {
		err = FUNC1(worker);
		goto err_worker;
	}

	dev->worker = worker;
	FUNC8(worker);	/* avoid contributing to loadavg */

	err = FUNC6(dev);
	if (err)
		goto err_cgroup;

	err = FUNC7(dev);
	if (err)
		goto err_cgroup;

	return 0;
err_cgroup:
	FUNC4(worker);
	dev->worker = NULL;
err_worker:
	if (dev->mm)
		FUNC5(dev->mm);
	dev->mm = NULL;
err_mm:
	return err;
}