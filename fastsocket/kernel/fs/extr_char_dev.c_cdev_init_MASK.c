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
struct file_operations {int dummy; } ;
struct cdev {struct file_operations const* ops; int /*<<< orphan*/  kobj; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ktype_cdev_default ; 
 int /*<<< orphan*/  FUNC2 (struct cdev*,int /*<<< orphan*/ ,int) ; 

void FUNC3(struct cdev *cdev, const struct file_operations *fops)
{
	FUNC2(cdev, 0, sizeof *cdev);
	FUNC0(&cdev->list);
	FUNC1(&cdev->kobj, &ktype_cdev_default);
	cdev->ops = fops;
}