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
struct per_user_data {scalar_t__ ring_cons; scalar_t__ ring_prod; scalar_t__ ring_overflow; int /*<<< orphan*/  evtchn_wait; } ;
struct file {struct per_user_data* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLOUT ; 
 unsigned int POLLRDNORM ; 
 unsigned int POLLWRNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC1(struct file *file, poll_table *wait)
{
	unsigned int mask = POLLOUT | POLLWRNORM;
	struct per_user_data *u = file->private_data;

	FUNC0(file, &u->evtchn_wait, wait);
	if (u->ring_cons != u->ring_prod)
		mask |= POLLIN | POLLRDNORM;
	if (u->ring_overflow)
		mask = POLLERR;
	return mask;
}