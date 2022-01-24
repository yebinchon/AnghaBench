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
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_link_max; } ;

/* Variables and functions */
 int EMLINK ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct dentry*,struct inode*) ; 
 int FUNC8 (struct inode*,struct inode*) ; 
 struct inode* FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct inode * dir, struct dentry *dentry, int mode)
{
	struct inode * inode;
	int err = -EMLINK;

	if (dir->i_nlink >= FUNC2(dir->i_sb)->s_link_max) 
		goto out;
	FUNC5(dir);

	inode = FUNC9(dir, S_IFDIR|mode);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out_dir;

	FUNC10(inode, 0);

	FUNC5(inode);

	err = FUNC8(inode, dir);
	if (err)
		goto out_fail;

	err = FUNC7(dentry, inode);
	if (err)
		goto out_fail;

        FUNC3(dentry, inode);
out:
	return err;

out_fail:
	FUNC4(inode);
	FUNC4(inode);
	FUNC6(inode);
out_dir:
	FUNC4(dir);
	goto out;
}