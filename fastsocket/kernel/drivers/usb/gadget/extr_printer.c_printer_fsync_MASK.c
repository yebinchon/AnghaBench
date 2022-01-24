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
struct printer_dev {int /*<<< orphan*/  tx_reqs_active; int /*<<< orphan*/  tx_flush_wait; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_reqs; } ;
struct file {struct printer_dev* private_data; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct file *fd, struct dentry *dentry, int datasync)
{
	struct printer_dev	*dev = fd->private_data;
	unsigned long		flags;
	int			tx_list_empty;

	FUNC2(&dev->lock, flags);
	tx_list_empty = (FUNC0(FUNC1(&dev->tx_reqs)));
	FUNC3(&dev->lock, flags);

	if (!tx_list_empty) {
		/* Sleep until all data has been sent */
		FUNC4(dev->tx_flush_wait,
				(FUNC0(FUNC1(&dev->tx_reqs_active))));
	}

	return 0;
}