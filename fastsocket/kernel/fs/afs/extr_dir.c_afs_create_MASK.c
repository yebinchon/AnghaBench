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
struct nameidata {int dummy; } ;
struct key {int /*<<< orphan*/  i_sb; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_6__ {scalar_t__ len; int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  vnode; int /*<<< orphan*/  vid; } ;
struct afs_vnode {int /*<<< orphan*/  lock; int /*<<< orphan*/  update_cnt; TYPE_2__* volume; TYPE_1__ fid; } ;
struct afs_server {int dummy; } ;
struct afs_file_status {int dummy; } ;
struct afs_fid {int dummy; } ;
struct afs_callback {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  cell; } ;

/* Variables and functions */
 scalar_t__ AFSNAMEMAX ; 
 struct afs_vnode* FUNC0 (struct key*) ; 
 int ENAMETOOLONG ; 
 scalar_t__ FUNC1 (struct key*) ; 
 int FUNC2 (struct key*) ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct key* FUNC6 (int /*<<< orphan*/ ,struct key*,struct afs_fid*,struct afs_file_status*,struct afs_callback*) ; 
 int /*<<< orphan*/  FUNC7 (struct afs_server*) ; 
 struct key* FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct afs_vnode*,struct key*,int /*<<< orphan*/ ,int,struct afs_fid*,struct afs_file_status*,struct afs_callback*,struct afs_server**) ; 
 int /*<<< orphan*/  FUNC10 (struct afs_vnode*,struct afs_server*) ; 
 int /*<<< orphan*/  FUNC11 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC12 (struct dentry*,struct key*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*) ; 
 scalar_t__ FUNC14 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC15 (struct key*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct inode *dir, struct dentry *dentry, int mode,
		      struct nameidata *nd)
{
	struct afs_file_status status;
	struct afs_callback cb;
	struct afs_server *server;
	struct afs_vnode *dvnode, *vnode;
	struct afs_fid fid;
	struct inode *inode;
	struct key *key;
	int ret;

	dvnode = FUNC0(dir);

	FUNC4("{%x:%u},{%s},%o,",
	       dvnode->fid.vid, dvnode->fid.vnode, dentry->d_name.name, mode);

	ret = -ENAMETOOLONG;
	if (dentry->d_name.len >= AFSNAMEMAX)
		goto error;

	key = FUNC8(dvnode->volume->cell);
	if (FUNC1(key)) {
		ret = FUNC2(key);
		goto error;
	}

	mode |= S_IFREG;
	ret = FUNC9(dvnode, key, dentry->d_name.name,
			       mode, &fid, &status, &cb, &server);
	if (ret < 0)
		goto create_error;

	inode = FUNC6(dir->i_sb, key, &fid, &status, &cb);
	if (FUNC1(inode)) {
		/* ENOMEM at a really inconvenient time - just abandon the new
		 * directory on the server */
		ret = FUNC2(inode);
		goto iget_error;
	}

	/* apply the status report we've got for the new vnode */
	vnode = FUNC0(inode);
	FUNC16(&vnode->lock);
	vnode->update_cnt++;
	FUNC17(&vnode->lock);
	FUNC10(vnode, server);
	FUNC7(server);

	FUNC12(dentry, inode);
	if (FUNC14(dentry)) {
		FUNC3("not hashed");
		FUNC13(dentry);
	}
	FUNC15(key);
	FUNC5(" = 0");
	return 0;

iget_error:
	FUNC7(server);
create_error:
	FUNC15(key);
error:
	FUNC11(dentry);
	FUNC5(" = %d", ret);
	return ret;
}