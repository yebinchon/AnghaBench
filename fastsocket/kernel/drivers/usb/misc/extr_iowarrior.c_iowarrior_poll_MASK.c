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
struct iowarrior {int /*<<< orphan*/  write_busy; int /*<<< orphan*/  present; int /*<<< orphan*/  write_wait; int /*<<< orphan*/  read_wait; } ;
struct file {struct iowarrior* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 scalar_t__ MAX_WRITES_IN_FLIGHT ; 
 int POLLERR ; 
 int POLLHUP ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct iowarrior*) ; 

__attribute__((used)) static unsigned FUNC3(struct file *file, poll_table * wait)
{
	struct iowarrior *dev = file->private_data;
	unsigned int mask = 0;

	if (!dev->present)
		return POLLERR | POLLHUP;

	FUNC1(file, &dev->read_wait, wait);
	FUNC1(file, &dev->write_wait, wait);

	if (!dev->present)
		return POLLERR | POLLHUP;

	if (FUNC2(dev) != -1)
		mask |= POLLIN | POLLRDNORM;

	if (FUNC0(&dev->write_busy) < MAX_WRITES_IN_FLIGHT)
		mask |= POLLOUT | POLLWRNORM;
	return mask;
}