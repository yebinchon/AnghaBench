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
struct seq_file {struct cgroup_pidlist* private; } ;
struct inode {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;
struct cgroup_pidlist {int dummy; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int /*<<< orphan*/  FUNC0 (struct cgroup_pidlist*) ; 
 int FUNC1 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct cgroup_pidlist *l;
	if (!(file->f_mode & FMODE_READ))
		return 0;
	/*
	 * the seq_file will only be initialized if the file was opened for
	 * reading; hence we check if it's not null only in that case.
	 */
	l = ((struct seq_file *)file->private_data)->private;
	FUNC0(l);
	return FUNC1(inode, file);
}