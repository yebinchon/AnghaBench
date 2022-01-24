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
struct inode {int i_state; int /*<<< orphan*/  i_mapping; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int I_DIRTY ; 
 int I_DIRTY_PAGES ; 
 int I_DIRTY_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct inode*,int) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct dentry *dentry, int datasync)
{
	struct inode *inode = dentry->d_inode;
	int sync_state = inode->i_state & I_DIRTY;
	struct gfs2_inode *ip = FUNC0(inode);
	int ret;

	if (!FUNC3(ip))
		sync_state &= ~I_DIRTY_PAGES;
	if (datasync)
		sync_state &= ~I_DIRTY_SYNC;

	if (sync_state) {
		ret = FUNC4(inode, 1);
		if (ret)
			return ret;
		if (FUNC3(ip))
			FUNC1(inode->i_mapping);
		FUNC2(ip->i_gl, 1);
	}

	return 0;
}