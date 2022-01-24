#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {struct inode* d_inode; TYPE_3__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  flags; int /*<<< orphan*/  vfs_inode; TYPE_2__* volume; TYPE_1__ fid; } ;
struct TYPE_5__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 scalar_t__ AFSNAMEMAX ; 
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  AFS_VNODE_DELETED ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct afs_vnode*) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (struct afs_vnode*,struct key*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct key*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct inode *dir, struct dentry *dentry)
{
	struct afs_vnode *dvnode, *vnode;
	struct key *key;
	int ret;

	dvnode = FUNC0(dir);

	FUNC3("{%x:%u},{%s}",
	       dvnode->fid.vid, dvnode->fid.vnode, dentry->d_name.name);

	ret = -ENAMETOOLONG;
	if (dentry->d_name.len >= AFSNAMEMAX)
		goto error;

	key = FUNC6(dvnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error;
	}

	ret = FUNC7(dvnode, key, dentry->d_name.name, true);
	if (ret < 0)
		goto rmdir_error;

	if (dentry->d_inode) {
		vnode = FUNC0(dentry->d_inode);
		FUNC8(&vnode->vfs_inode);
		FUNC10(AFS_VNODE_DELETED, &vnode->flags);
		FUNC5(vnode);
	}

	FUNC9(key);
	FUNC4(" = 0");
	return 0;

rmdir_error:
	FUNC9(key);
error:
	FUNC4(" = %d", ret);
	return ret;
}