#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysfs_dirent {int dummy; } ;
struct sysfs_buffer {scalar_t__ page; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct file {struct sysfs_buffer* private_data; TYPE_2__ f_path; } ;
struct TYPE_3__ {struct sysfs_dirent* d_fsdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct sysfs_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysfs_dirent*,struct sysfs_buffer*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	struct sysfs_dirent *sd = filp->f_path.dentry->d_fsdata;
	struct sysfs_buffer *buffer = filp->private_data;

	FUNC2(sd, buffer);

	if (buffer->page)
		FUNC0((unsigned long)buffer->page);
	FUNC1(buffer);

	return 0;
}