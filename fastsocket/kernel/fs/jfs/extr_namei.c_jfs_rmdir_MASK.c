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
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_6__ {struct inode* ip; } ;
struct tblock {TYPE_2__ u; int /*<<< orphan*/  xflag; } ;
struct inode {int i_size; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct component_name {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_7__ {int flag; } ;
struct TYPE_8__ {int /*<<< orphan*/  commit_mutex; TYPE_3__ acl; TYPE_3__ ea; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_DELETE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  COMMIT_Stale ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int DXD_EXTENT ; 
 int EIO ; 
 int ENOTEMPTY ; 
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_REMOVE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct component_name*) ; 
 int FUNC6 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,struct inode*) ; 
 struct tblock* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,struct inode*,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 

__attribute__((used)) static int FUNC22(struct inode *dip, struct dentry *dentry)
{
	int rc;
	tid_t tid;		/* transaction id */
	struct inode *ip = dentry->d_inode;
	ino_t ino;
	struct component_name dname;
	struct inode *iplist[2];
	struct tblock *tblk;

	FUNC9("jfs_rmdir: dip:0x%p name:%s", dip, dentry->d_name.name);

	/* Init inode for quota operations. */
	FUNC21(ip);

	/* directory must be empty to be removed */
	if (!FUNC4(ip)) {
		rc = -ENOTEMPTY;
		goto out;
	}

	if ((rc = FUNC6(&dname, dentry))) {
		goto out;
	}

	tid = FUNC17(dip->i_sb, 0);

	FUNC12(&FUNC0(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC12(&FUNC0(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	iplist[0] = dip;
	iplist[1] = ip;

	tblk = FUNC15(tid);
	tblk->xflag |= COMMIT_DELETE;
	tblk->u.ip = ip;

	/*
	 * delete the entry of target directory from parent directory
	 */
	ino = ip->i_ino;
	if ((rc = FUNC3(tid, dip, &dname, &ino, JFS_REMOVE))) {
		FUNC8("jfs_rmdir: dtDelete returned %d", rc);
		if (rc == -EIO)
			FUNC16(tid, 1);
		FUNC20(tid);
		FUNC13(&FUNC0(ip)->commit_mutex);
		FUNC13(&FUNC0(dip)->commit_mutex);

		goto out2;
	}

	/* update parent directory's link count corresponding
	 * to ".." entry of the target directory deleted
	 */
	dip->i_ctime = dip->i_mtime = CURRENT_TIME;
	FUNC7(dip);

	/*
	 * OS/2 could have created EA and/or ACL
	 */
	/* free EA from both persistent and working map */
	if (FUNC0(ip)->ea.flag & DXD_EXTENT) {
		/* free EA pages */
		FUNC19(tid, ip, &FUNC0(ip)->ea, NULL);
	}
	FUNC0(ip)->ea.flag = 0;

	/* free ACL from both persistent and working map */
	if (FUNC0(ip)->acl.flag & DXD_EXTENT) {
		/* free ACL pages */
		FUNC19(tid, ip, &FUNC0(ip)->acl, NULL);
	}
	FUNC0(ip)->acl.flag = 0;

	/* mark the target directory as deleted */
	FUNC2(ip);
	FUNC11(ip);

	rc = FUNC18(tid, 2, &iplist[0], 0);

	FUNC20(tid);

	FUNC13(&FUNC0(ip)->commit_mutex);
	FUNC13(&FUNC0(dip)->commit_mutex);

	/*
	 * Truncating the directory index table is not guaranteed.  It
	 * may need to be done iteratively
	 */
	if (FUNC14(COMMIT_Stale, dip)) {
		if (dip->i_size > 1)
			FUNC10(dip, 0);

		FUNC1(COMMIT_Stale, dip);
	}

      out2:
	FUNC5(&dname);

      out:
	FUNC9("jfs_rmdir: rc:%d", rc);
	return rc;
}