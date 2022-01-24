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
struct qstr {int /*<<< orphan*/  len; int /*<<< orphan*/  name; int /*<<< orphan*/  hash; } ;
struct pohmelfs_inode {int /*<<< orphan*/  ino; } ;
struct inode {int /*<<< orphan*/  i_mode; TYPE_2__* i_sb; } ;
struct dentry {struct qstr d_name; struct inode* d_inode; } ;
struct TYPE_4__ {TYPE_1__* s_op; } ;
struct TYPE_3__ {int (* write_inode ) (struct inode*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 struct pohmelfs_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct dentry*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pohmelfs_inode*,struct qstr*,struct pohmelfs_inode*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dentry *old_dentry, struct inode *dir,
	struct dentry *dentry)
{
	struct inode *inode = old_dentry->d_inode;
	struct pohmelfs_inode *pi = FUNC0(inode);
	int err;
	struct qstr str = dentry->d_name;

	str.hash = FUNC1(dentry->d_name.name, dentry->d_name.len, 0);

	err = inode->i_sb->s_op->write_inode(inode, 0);
	if (err)
		return err;

	err = FUNC3(FUNC0(dir), &str, pi, NULL);
	if (err)
		return err;

	return FUNC2(dir, dentry, pi->ino, inode->i_mode);
}