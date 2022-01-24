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
struct seq_file {struct afs_cell* private; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct afs_cell {int dummy; } ;
struct TYPE_2__ {struct afs_cell* data; } ;

/* Variables and functions */
 int ENOENT ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  afs_proc_cell_vlservers_ops ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct inode *inode, struct file *file)
{
	struct afs_cell *cell;
	struct seq_file *m;
	int ret;

	cell = FUNC0(inode)->data;
	if (!cell)
		return -ENOENT;

	ret = FUNC1(file, &afs_proc_cell_vlservers_ops);
	if (ret<0)
		return ret;

	m = file->private_data;
	m->private = cell;

	return 0;
}