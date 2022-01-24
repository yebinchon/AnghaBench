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
struct nameidata {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENAMETOOLONG ; 
 struct dentry* FUNC0 (struct inode*) ; 
 struct dentry* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ NILFS_NAME_LEN ; 
 struct dentry* FUNC3 (struct inode*,struct dentry*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (struct inode*,struct dentry*) ; 

__attribute__((used)) static struct dentry *
FUNC6(struct inode *dir, struct dentry *dentry, struct nameidata *nd)
{
	struct inode *inode;
	ino_t ino;

	if (dentry->d_name.len > NILFS_NAME_LEN)
		return FUNC1(-ENAMETOOLONG);

	ino = FUNC5(dir, dentry);
	inode = NULL;
	if (ino) {
		inode = FUNC4(dir->i_sb, ino);
		if (FUNC2(inode))
			return FUNC0(inode);
	}
	return FUNC3(inode, dentry);
}