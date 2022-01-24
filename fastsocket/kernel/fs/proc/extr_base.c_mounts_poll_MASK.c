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
struct proc_mounts {scalar_t__ event; struct mnt_namespace* ns; } ;
struct mnt_namespace {scalar_t__ event; int /*<<< orphan*/  poll; } ;
struct file {struct proc_mounts* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;

/* Variables and functions */
 unsigned int POLLERR ; 
 unsigned int POLLIN ; 
 unsigned int POLLPRI ; 
 unsigned int POLLRDNORM ; 
 int /*<<< orphan*/  FUNC0 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfsmount_lock ; 

__attribute__((used)) static unsigned FUNC3(struct file *file, poll_table *wait)
{
	struct proc_mounts *p = file->private_data;
	struct mnt_namespace *ns = p->ns;
	unsigned res = POLLIN | POLLRDNORM;

	FUNC0(file, &ns->poll, wait);

	FUNC1(&vfsmount_lock);
	if (p->event != ns->event) {
		p->event = ns->event;
		res |= POLLERR | POLLPRI;
	}
	FUNC2(&vfsmount_lock);

	return res;
}