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
struct inode {int i_state; int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int EIO ; 
 int I_DIRTY ; 
 int I_DIRTY_DATASYNC ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(struct file *file, struct dentry *dentry, int datasync)
{
	struct inode *inode = dentry->d_inode;
	int rc = 0;

	if (!(inode->i_state & I_DIRTY) ||
	    (datasync && !(inode->i_state & I_DIRTY_DATASYNC))) {
		/* Make sure committed changes hit the disk */
		FUNC2(FUNC0(inode->i_sb)->log, 1);
		return rc;
	}

	rc |= FUNC1(inode, 1);

	return rc ? -EIO : 0;
}