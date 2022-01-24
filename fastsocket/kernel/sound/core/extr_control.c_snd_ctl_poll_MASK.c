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
struct snd_ctl_file {int /*<<< orphan*/  events; int /*<<< orphan*/  change_sleep; int /*<<< orphan*/  subscribed; } ;
struct file {struct snd_ctl_file* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLIN ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC2(struct file *file, poll_table * wait)
{
	unsigned int mask;
	struct snd_ctl_file *ctl;

	ctl = file->private_data;
	if (!ctl->subscribed)
		return 0;
	FUNC1(file, &ctl->change_sleep, wait);

	mask = 0;
	if (!FUNC0(&ctl->events))
		mask |= POLLIN | POLLRDNORM;

	return mask;
}