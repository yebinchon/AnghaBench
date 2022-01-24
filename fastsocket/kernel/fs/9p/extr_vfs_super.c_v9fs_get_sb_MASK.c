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
struct vfsmount {int dummy; } ;
struct v9fs_session_info {int /*<<< orphan*/  qid; struct dentry* s_root; } ;
struct super_block {int /*<<< orphan*/  qid; struct dentry* s_root; } ;
struct p9_wstat {int /*<<< orphan*/  qid; struct dentry* s_root; } ;
struct p9_fid {int /*<<< orphan*/  qid; struct dentry* s_root; } ;
struct inode {int /*<<< orphan*/  qid; struct dentry* s_root; } ;
struct file_system_type {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_2__ {int /*<<< orphan*/  i_ino; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct v9fs_session_info*) ; 
 int S_IFDIR ; 
 int S_IRWXUGO ; 
 int S_ISVTX ; 
 struct dentry* FUNC3 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC9 (struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC10 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC11 (struct file_system_type*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC12 (struct vfsmount*,struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct dentry*,struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct v9fs_session_info*,struct v9fs_session_info*,int,void*) ; 
 struct v9fs_session_info* FUNC15 (struct v9fs_session_info*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct v9fs_session_info*) ; 
 struct v9fs_session_info* FUNC18 (struct v9fs_session_info*,char const*,void*) ; 
 int /*<<< orphan*/  v9fs_set_super ; 
 int /*<<< orphan*/  FUNC19 (struct v9fs_session_info*,TYPE_1__*,struct v9fs_session_info*) ; 

__attribute__((used)) static int FUNC20(struct file_system_type *fs_type, int flags,
		       const char *dev_name, void *data,
		       struct vfsmount *mnt)
{
	struct super_block *sb = NULL;
	struct inode *inode = NULL;
	struct dentry *root = NULL;
	struct v9fs_session_info *v9ses = NULL;
	struct p9_wstat *st = NULL;
	int mode = S_IRWXUGO | S_ISVTX;
	struct p9_fid *fid;
	int retval = 0;

	FUNC1(P9_DEBUG_VFS, " \n");

	v9ses = FUNC7(sizeof(struct v9fs_session_info), GFP_KERNEL);
	if (!v9ses)
		return -ENOMEM;

	fid = FUNC18(v9ses, dev_name, data);
	if (FUNC0(fid)) {
		retval = FUNC2(fid);
		goto close_session;
	}

	st = FUNC9(fid);
	if (FUNC0(st)) {
		retval = FUNC2(st);
		goto clunk_fid;
	}

	sb = FUNC11(fs_type, NULL, v9fs_set_super, v9ses);
	if (FUNC0(sb)) {
		retval = FUNC2(sb);
		goto free_stat;
	}
	FUNC14(sb, v9ses, flags, data);

	inode = FUNC15(sb, S_IFDIR | mode);
	if (FUNC0(inode)) {
		retval = FUNC2(inode);
		goto release_sb;
	}

	root = FUNC3(inode);
	if (!root) {
		FUNC5(inode);
		retval = -ENOMEM;
		goto release_sb;
	}

	sb->s_root = root;
	root->d_inode->i_ino = FUNC16(&st->qid);

	FUNC19(st, root->d_inode, sb);

	FUNC13(root, fid);
	FUNC10(st);
	FUNC6(st);

FUNC1(P9_DEBUG_VFS, " simple set mount, return 0\n");
	FUNC12(mnt, sb);
	return 0;

free_stat:
	FUNC10(st);
	FUNC6(st);

clunk_fid:
	FUNC8(fid);

close_session:
	FUNC17(v9ses);
	FUNC6(v9ses);
	return retval;

release_sb:
	FUNC10(st);
	FUNC6(st);
	FUNC4(sb);
	return retval;
}