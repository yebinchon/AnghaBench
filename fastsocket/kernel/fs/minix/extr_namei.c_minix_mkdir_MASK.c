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
struct inode {scalar_t__ i_nlink; int i_mode; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_link_max; } ;

/* Variables and functions */
 int EMLINK ; 
 int S_IFDIR ; 
 int S_ISGID ; 
 int /*<<< orphan*/  FUNC0 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct dentry*,struct inode*) ; 
 int FUNC5 (struct inode*,struct inode*) ; 
 struct inode* FUNC6 (struct inode*,int*) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct inode * dir, struct dentry *dentry, int mode)
{
	struct inode * inode;
	int err = -EMLINK;

	if (dir->i_nlink >= FUNC7(dir->i_sb)->s_link_max)
		goto out;

	FUNC2(dir);

	inode = FUNC6(dir, &err);
	if (!inode)
		goto out_dir;

	inode->i_mode = S_IFDIR | mode;
	if (dir->i_mode & S_ISGID)
		inode->i_mode |= S_ISGID;
	FUNC8(inode, 0);

	FUNC2(inode);

	err = FUNC5(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC4(dentry, inode);
	if (err)
		goto out_fail;

	FUNC0(dentry, inode);
out:
	return err;

out_fail:
	FUNC1(inode);
	FUNC1(inode);
	FUNC3(inode);
out_dir:
	FUNC1(dir);
	goto out;
}