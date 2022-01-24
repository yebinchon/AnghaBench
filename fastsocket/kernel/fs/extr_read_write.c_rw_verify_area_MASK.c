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
struct inode {scalar_t__ i_flock; } ;
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {TYPE_1__ f_path; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_4__ {struct inode* d_inode; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FLOCK_VERIFY_READ ; 
 int /*<<< orphan*/  FLOCK_VERIFY_WRITE ; 
 size_t MAX_RW_COUNT ; 
 int /*<<< orphan*/  MAY_READ ; 
 int /*<<< orphan*/  MAY_WRITE ; 
 int READ ; 
 int FUNC0 (int /*<<< orphan*/ ,struct inode*,struct file*,scalar_t__,size_t) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

int FUNC4(int read_write, struct file *file, loff_t *ppos, size_t count)
{
	struct inode *inode;
	loff_t pos;
	int retval = -EINVAL;

	inode = file->f_path.dentry->d_inode;
	if (FUNC3((ssize_t) count < 0))
		return retval;
	pos = *ppos;
	if (FUNC3((pos < 0) || (loff_t) (pos + count) < 0))
		return retval;

	if (FUNC3(inode->i_flock && FUNC1(inode))) {
		retval = FUNC0(
			read_write == READ ? FLOCK_VERIFY_READ : FLOCK_VERIFY_WRITE,
			inode, file, pos, count);
		if (retval < 0)
			return retval;
	}
	retval = FUNC2(file,
				read_write == READ ? MAY_READ : MAY_WRITE);
	if (retval)
		return retval;
	return count > MAX_RW_COUNT ? MAX_RW_COUNT : count;
}