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
struct uio_listener {struct uio_device* dev; } ;
struct uio_device {int /*<<< orphan*/  async_queue; } ;
struct file {struct uio_listener* private_data; } ;

/* Variables and functions */
 int FUNC0 (int,struct file*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(int fd, struct file *filep, int on)
{
	struct uio_listener *listener = filep->private_data;
	struct uio_device *idev = listener->dev;

	return FUNC0(fd, filep, on, &idev->async_queue);
}