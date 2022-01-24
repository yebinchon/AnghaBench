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
struct inode {TYPE_1__* i_sb; } ;
struct dentry {int dummy; } ;
struct TYPE_2__ {int s_blocksize; } ;

/* Variables and functions */
 int ENAMETOOLONG ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int FUNC1 (struct inode*) ; 
 int S_IFLNK ; 
 int FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,char const*,int) ; 
 int FUNC7 (char const*) ; 
 struct inode* FUNC8 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct inode * dir, struct dentry * dentry, 
	const char * symname)
{
	int err = -ENAMETOOLONG;
	int l = FUNC7(symname)+1;
	struct inode * inode;

	if (l > dir->i_sb->s_blocksize)
		goto out;

	inode = FUNC8(dir, S_IFLNK|0777);
	err = FUNC1(inode);
	if (FUNC0(inode))
		goto out;
	
	FUNC9(inode, 0);
	err = FUNC6(inode, symname, l);
	if (err)
		goto out_fail;

	FUNC5(inode);
	err = FUNC2(dentry, inode);
out:
	return err;

out_fail:
	FUNC3(inode);
	FUNC4(inode);
	goto out;
}