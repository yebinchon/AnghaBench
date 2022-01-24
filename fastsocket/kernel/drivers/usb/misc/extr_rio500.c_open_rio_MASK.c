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
struct rio_usb_data {int isopen; TYPE_1__* rio_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  wait_q; int /*<<< orphan*/  present; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct rio_usb_data rio_instance ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct rio_usb_data *rio = &rio_instance;

	FUNC2(&(rio->lock));

	if (rio->isopen || !rio->present) {
		FUNC3(&(rio->lock));
		return -EBUSY;
	}
	rio->isopen = 1;

	FUNC1(&rio->wait_q);

	FUNC3(&(rio->lock));

	FUNC0(&rio->rio_dev->dev, "Rio opened.\n");

	return 0;
}