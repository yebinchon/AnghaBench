#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sysfs_open_dirent {int /*<<< orphan*/  event; int /*<<< orphan*/  poll; } ;
struct TYPE_6__ {struct sysfs_open_dirent* open; } ;
struct sysfs_dirent {TYPE_3__ s_attr; } ;
struct sysfs_buffer {scalar_t__ event; int needs_read_fill; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; struct sysfs_buffer* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
struct TYPE_4__ {struct sysfs_dirent* d_fsdata; } ;

/* Variables and functions */
 unsigned int DEFAULT_POLLMASK ; 
 unsigned int POLLERR ; 
 unsigned int POLLPRI ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sysfs_dirent*) ; 
 int /*<<< orphan*/  FUNC3 (struct sysfs_dirent*) ; 

__attribute__((used)) static unsigned int FUNC4(struct file *filp, poll_table *wait)
{
	struct sysfs_buffer * buffer = filp->private_data;
	struct sysfs_dirent *attr_sd = filp->f_path.dentry->d_fsdata;
	struct sysfs_open_dirent *od = attr_sd->s_attr.open;

	/* need parent for the kobj, grab both */
	if (!FUNC2(attr_sd))
		goto trigger;

	FUNC1(filp, &od->poll, wait);

	FUNC3(attr_sd);

	if (buffer->event != FUNC0(&od->event))
		goto trigger;

	return DEFAULT_POLLMASK;

 trigger:
	buffer->needs_read_fill = 1;
	return DEFAULT_POLLMASK|POLLERR|POLLPRI;
}