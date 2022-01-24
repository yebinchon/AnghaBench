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
struct printer_dev {int current_rx_bytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  rx_buffers; int /*<<< orphan*/  tx_reqs; int /*<<< orphan*/  tx_wait; int /*<<< orphan*/  rx_wait; int /*<<< orphan*/  lock_printer_io; } ;
struct file {struct printer_dev* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct printer_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static unsigned int
FUNC8(struct file *fd, poll_table *wait)
{
	struct printer_dev	*dev = fd->private_data;
	unsigned long		flags;
	int			status = 0;

	FUNC4(&dev->lock_printer_io);
	FUNC5(&dev->lock, flags);
	FUNC3(dev);
	FUNC7(&dev->lock, flags);
	FUNC6(&dev->lock_printer_io);

	FUNC2(fd, &dev->rx_wait, wait);
	FUNC2(fd, &dev->tx_wait, wait);

	FUNC5(&dev->lock, flags);
	if (FUNC0(!FUNC1(&dev->tx_reqs)))
		status |= POLLOUT | POLLWRNORM;

	if (FUNC0(dev->current_rx_bytes) ||
			FUNC0(!FUNC1(&dev->rx_buffers)))
		status |= POLLIN | POLLRDNORM;

	FUNC7(&dev->lock, flags);

	return status;
}