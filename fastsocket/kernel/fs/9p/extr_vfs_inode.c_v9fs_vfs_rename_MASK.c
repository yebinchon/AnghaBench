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
struct v9fs_session_info {int /*<<< orphan*/  uname; } ;
struct p9_wstat {char* name; int /*<<< orphan*/  muid; } ;
struct p9_fid {int /*<<< orphan*/  qid; } ;
struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ name; } ;
struct dentry {TYPE_1__ d_name; int /*<<< orphan*/  d_parent; struct inode* d_inode; } ;

/* Variables and functions */
 int EXDEV ; 
 scalar_t__ FUNC0 (struct p9_fid*) ; 
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (struct p9_fid*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*) ; 
 int FUNC5 (struct p9_fid*,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_wstat*) ; 
 struct p9_fid* FUNC7 (int /*<<< orphan*/ ) ; 
 struct p9_fid* FUNC8 (struct dentry*) ; 
 struct v9fs_session_info* FUNC9 (struct inode*) ; 

__attribute__((used)) static int
FUNC10(struct inode *old_dir, struct dentry *old_dentry,
		struct inode *new_dir, struct dentry *new_dentry)
{
	struct inode *old_inode;
	struct v9fs_session_info *v9ses;
	struct p9_fid *oldfid;
	struct p9_fid *olddirfid;
	struct p9_fid *newdirfid;
	struct p9_wstat wstat;
	int retval;

	FUNC1(P9_DEBUG_VFS, "\n");
	retval = 0;
	old_inode = old_dentry->d_inode;
	v9ses = FUNC9(old_inode);
	oldfid = FUNC8(old_dentry);
	if (FUNC0(oldfid))
		return FUNC2(oldfid);

	olddirfid = FUNC7(old_dentry->d_parent);
	if (FUNC0(olddirfid)) {
		retval = FUNC2(olddirfid);
		goto done;
	}

	newdirfid = FUNC7(new_dentry->d_parent);
	if (FUNC0(newdirfid)) {
		retval = FUNC2(newdirfid);
		goto clunk_olddir;
	}

	/* 9P can only handle file rename in the same directory */
	if (FUNC3(&olddirfid->qid, &newdirfid->qid, sizeof(newdirfid->qid))) {
		FUNC1(P9_DEBUG_ERROR,
				"old dir and new dir are different\n");
		retval = -EXDEV;
		goto clunk_newdir;
	}

	FUNC6(&wstat);
	wstat.muid = v9ses->uname;
	wstat.name = (char *) new_dentry->d_name.name;
	retval = FUNC5(oldfid, &wstat);

clunk_newdir:
	FUNC4(newdirfid);

clunk_olddir:
	FUNC4(olddirfid);

done:
	return retval;
}