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
struct uio_listener {scalar_t__ event_count; struct uio_device* dev; } ;
struct uio_device {int /*<<< orphan*/  event; int /*<<< orphan*/  wait; TYPE_1__* info; } ;
struct file {struct uio_listener* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_2__ {scalar_t__ irq; } ;

/* Variables and functions */
 unsigned int EIO ; 
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 scalar_t__ UIO_IRQ_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *filep, poll_table *wait)
{
	struct uio_listener *listener = filep->private_data;
	struct uio_device *idev = listener->dev;

	if (idev->info->irq == UIO_IRQ_NONE)
		return -EIO;

	FUNC1(filep, &idev->wait, wait);
	if (listener->event_count != FUNC0(&idev->event))
		return POLLIN | POLLRDNORM;
	return 0;
}