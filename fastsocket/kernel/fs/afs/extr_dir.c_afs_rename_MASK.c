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
struct dentry {TYPE_3__ d_name; struct inode* d_inode; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {TYPE_2__* volume; TYPE_1__ fid; } ;
struct TYPE_5__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 scalar_t__ AFSNAMEMAX ; 
 struct afs_vnode* FUNC0 (struct inode*) ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 struct key* FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct afs_vnode*,struct afs_vnode*,struct key*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC8 (struct key*) ; 

__attribute__((used)) static int FUNC9(struct inode *old_dir, struct dentry *old_dentry,
		      struct inode *new_dir, struct dentry *new_dentry)
{
	struct afs_vnode *orig_dvnode, *new_dvnode, *vnode;
	struct key *key;
	int ret;

	vnode = FUNC0(old_dentry->d_inode);
	orig_dvnode = FUNC0(old_dir);
	new_dvnode = FUNC0(new_dir);

	FUNC3("{%x:%u},{%x:%u},{%x:%u},{%s}",
	       orig_dvnode->fid.vid, orig_dvnode->fid.vnode,
	       vnode->fid.vid, vnode->fid.vnode,
	       new_dvnode->fid.vid, new_dvnode->fid.vnode,
	       new_dentry->d_name.name);

	ret = -ENAMETOOLONG;
	if (new_dentry->d_name.len >= AFSNAMEMAX)
		goto error;

	key = FUNC5(orig_dvnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error;
	}

	ret = FUNC6(orig_dvnode, new_dvnode, key,
			       old_dentry->d_name.name,
			       new_dentry->d_name.name);
	if (ret < 0)
		goto rename_error;
	FUNC8(key);
	FUNC4(" = 0");
	return 0;

rename_error:
	FUNC8(key);
error:
	FUNC7(new_dentry);
	FUNC4(" = %d", ret);
	return ret;
}