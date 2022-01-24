#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_count; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; TYPE_2__* d_parent; struct inode* d_inode; } ;
struct TYPE_8__ {int (* link ) (struct inode*,struct inode*,TYPE_3__*) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ d_name; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int FUNC6 (struct inode*,struct inode*,TYPE_3__*) ; 

__attribute__((used)) static int 
FUNC7(struct dentry *old_dentry, struct inode *dir, struct dentry *dentry)
{
	struct inode *inode = old_dentry->d_inode;
	int error;

	FUNC4(VFS, "NFS: link(%s/%s -> %s/%s)\n",
		old_dentry->d_parent->d_name.name, old_dentry->d_name.name,
		dentry->d_parent->d_name.name, dentry->d_name.name);

	FUNC5(inode);

	FUNC3(dentry);
	error = FUNC0(dir)->link(inode, dir, &dentry->d_name);
	if (error == 0) {
		FUNC1(&inode->i_count);
		FUNC2(dentry, inode);
	}
	return error;
}