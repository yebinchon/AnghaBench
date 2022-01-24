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
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_5__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_2__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_6__ {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  ixpxd; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 int EMLINK ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 scalar_t__ JFS_LINK_MAX ; 
 int FUNC2 (struct inode*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC6 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct component_name*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (struct component_name*,struct dentry*) ; 
 struct inode* FUNC10 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  jfs_dir_inode_operations ; 
 int /*<<< orphan*/  jfs_dir_operations ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,...) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int FUNC16 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 struct tblock* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 

__attribute__((used)) static int FUNC26(struct inode *dip, struct dentry *dentry, int mode)
{
	int rc = 0;
	tid_t tid;		/* transaction id */
	struct inode *ip = NULL;	/* child directory inode */
	ino_t ino;
	struct component_name dname;	/* child directory name */
	struct btstack btstack;
	struct inode *iplist[2];
	struct tblock *tblk;

	FUNC14("jfs_mkdir: dip:0x%p name:%s", dip, dentry->d_name.name);

	/* link count overflow on parent directory ? */
	if (dip->i_nlink == JFS_LINK_MAX) {
		rc = -EMLINK;
		goto out1;
	}

	/*
	 * search parent directory for entry/freespace
	 * (dtSearch() returns parent directory page pinned)
	 */
	if ((rc = FUNC9(&dname, dentry)))
		goto out1;

	/*
	 * Either iAlloc() or txBegin() may block.  Deadlock can occur if we
	 * block there while holding dtree page, so we allocate the inode &
	 * begin the transaction before we search the directory.
	 */
	ip = FUNC10(dip, S_IFDIR | mode);
	if (FUNC0(ip)) {
		rc = FUNC2(ip);
		goto out2;
	}

	tid = FUNC22(dip->i_sb, 0);

	FUNC18(&FUNC1(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC18(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC15(tid, ip, dip);
	if (rc)
		goto out3;

	rc = FUNC16(tid, ip, dip);
	if (rc) {
		FUNC21(tid, 0);
		goto out3;
	}

	if ((rc = FUNC6(dip, &dname, &ino, &btstack, JFS_CREATE))) {
		FUNC13("jfs_mkdir: dtSearch returned %d", rc);
		FUNC21(tid, 0);
		goto out3;
	}

	tblk = FUNC20(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	iplist[0] = dip;
	iplist[1] = ip;

	/*
	 * initialize the child directory in-line in inode
	 */
	FUNC4(tid, ip, dip->i_ino);

	/*
	 * create entry in parent directory for child directory
	 * (dtInsert() releases parent directory page)
	 */
	ino = ip->i_ino;
	if ((rc = FUNC5(tid, dip, &dname, &ino, &btstack))) {
		if (rc == -EIO) {
			FUNC13("jfs_mkdir: dtInsert returned -EIO");
			FUNC21(tid, 1);	/* Marks Filesystem dirty */
		} else
			FUNC21(tid, 0);	/* Filesystem full */
		goto out3;
	}

	ip->i_nlink = 2;	/* for '.' */
	ip->i_op = &jfs_dir_inode_operations;
	ip->i_fop = &jfs_dir_operations;

	FUNC17(ip);

	/* update parent directory inode */
	FUNC11(dip);		/* for '..' from child directory */
	dip->i_ctime = dip->i_mtime = CURRENT_TIME;
	FUNC17(dip);

	rc = FUNC23(tid, 2, &iplist[0], 0);

      out3:
	FUNC24(tid);
	FUNC19(&FUNC1(ip)->commit_mutex);
	FUNC19(&FUNC1(dip)->commit_mutex);
	if (rc) {
		FUNC8(ip);
		ip->i_nlink = 0;
		FUNC25(ip);
		FUNC12(ip);
	} else {
		FUNC3(dentry, ip);
		FUNC25(ip);
	}

      out2:
	FUNC7(&dname);


      out1:

	FUNC14("jfs_mkdir: rc:%d", rc);
	return rc;
}