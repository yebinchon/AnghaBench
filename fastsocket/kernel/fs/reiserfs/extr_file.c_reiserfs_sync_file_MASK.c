#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {TYPE_1__* i_sb; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  s_bdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct file *filp,
			      struct dentry *dentry, int datasync)
{
	struct inode *inode = dentry->d_inode;
	int err;
	int barrier_done;

	FUNC0(!FUNC1(inode->i_mode));
	err = FUNC7(inode->i_mapping);
	FUNC5(inode->i_sb);
	barrier_done = FUNC4(inode);
	FUNC6(inode->i_sb);
	if (barrier_done != 1 && FUNC3(inode->i_sb))
		FUNC2(inode->i_sb->s_bdev, NULL);
	if (barrier_done < 0)
		return barrier_done;
	return (err < 0) ? -EIO : 0;
}