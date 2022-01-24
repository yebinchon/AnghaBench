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
struct key {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_7__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; struct inode* d_inode; } ;
struct TYPE_8__ {int /*<<< orphan*/  i_count; } ;
struct TYPE_5__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_4__ vfs_inode; TYPE_2__* volume; TYPE_1__ fid; } ;
struct TYPE_6__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 scalar_t__ AFSNAMEMAX ; 
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_vnode*,struct afs_vnode*,struct key*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct dentry*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (struct key*) ; 

__attribute__((used)) static int FUNC11(struct dentry *from, struct inode *dir,
		    struct dentry *dentry)
{
	struct afs_vnode *dvnode, *vnode;
	struct key *key;
	int ret;

	vnode = FUNC0(from->d_inode);
	dvnode = FUNC0(dir);

	FUNC3("{%x:%u},{%x:%u},{%s}",
	       vnode->fid.vid, vnode->fid.vnode,
	       dvnode->fid.vid, dvnode->fid.vnode,
	       dentry->d_name.name);

	ret = -ENAMETOOLONG;
	if (dentry->d_name.len >= AFSNAMEMAX)
		goto error;

	key = FUNC5(dvnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error;
	}

	ret = FUNC6(dvnode, vnode, key, dentry->d_name.name);
	if (ret < 0)
		goto link_error;

	FUNC7(&vnode->vfs_inode.i_count);
	FUNC9(dentry, &vnode->vfs_inode);
	FUNC10(key);
	FUNC4(" = 0");
	return 0;

link_error:
	FUNC10(key);
error:
	FUNC8(dentry);
	FUNC4(" = %d", ret);
	return ret;
}