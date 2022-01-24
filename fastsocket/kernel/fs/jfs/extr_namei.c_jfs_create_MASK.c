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
struct TYPE_6__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_2__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct nameidata {int dummy; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; TYPE_3__* i_mapping; int /*<<< orphan*/ * i_fop; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_8__ {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  ixpxd; } ;
struct TYPE_7__ {int /*<<< orphan*/ * a_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC5 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct component_name*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct component_name*,struct dentry*) ; 
 struct inode* FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  jfs_aops ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  jfs_file_inode_operations ; 
 int /*<<< orphan*/  jfs_file_operations ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 struct tblock* FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC21 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,struct inode*) ; 

__attribute__((used)) static int FUNC25(struct inode *dip, struct dentry *dentry, int mode,
		struct nameidata *nd)
{
	int rc = 0;
	tid_t tid;		/* transaction id */
	struct inode *ip = NULL;	/* child directory inode */
	ino_t ino;
	struct component_name dname;	/* child directory name */
	struct btstack btstack;
	struct inode *iplist[2];
	struct tblock *tblk;

	FUNC12("jfs_create: dip:0x%p name:%s", dip, dentry->d_name.name);

	/*
	 * search parent directory for entry/freespace
	 * (dtSearch() returns parent directory page pinned)
	 */
	if ((rc = FUNC8(&dname, dentry)))
		goto out1;

	/*
	 * Either iAlloc() or txBegin() may block.  Deadlock can occur if we
	 * block there while holding dtree page, so we allocate the inode &
	 * begin the transaction before we search the directory.
	 */
	ip = FUNC9(dip, mode);
	if (FUNC0(ip)) {
		rc = FUNC2(ip);
		goto out2;
	}

	tid = FUNC20(dip->i_sb, 0);

	FUNC16(&FUNC1(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC16(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC13(tid, ip, dip);
	if (rc)
		goto out3;

	rc = FUNC14(tid, ip, dip);
	if (rc) {
		FUNC19(tid, 0);
		goto out3;
	}

	if ((rc = FUNC5(dip, &dname, &ino, &btstack, JFS_CREATE))) {
		FUNC11("jfs_create: dtSearch returned %d", rc);
		FUNC19(tid, 0);
		goto out3;
	}

	tblk = FUNC18(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	iplist[0] = dip;
	iplist[1] = ip;

	/*
	 * initialize the child XAD tree root in-line in inode
	 */
	FUNC24(tid, ip);

	/*
	 * create entry in parent directory for child directory
	 * (dtInsert() releases parent directory page)
	 */
	ino = ip->i_ino;
	if ((rc = FUNC4(tid, dip, &dname, &ino, &btstack))) {
		if (rc == -EIO) {
			FUNC11("jfs_create: dtInsert returned -EIO");
			FUNC19(tid, 1);	/* Marks Filesystem dirty */
		} else
			FUNC19(tid, 0);	/* Filesystem full */
		goto out3;
	}

	ip->i_op = &jfs_file_inode_operations;
	ip->i_fop = &jfs_file_operations;
	ip->i_mapping->a_ops = &jfs_aops;

	FUNC15(ip);

	dip->i_ctime = dip->i_mtime = CURRENT_TIME;

	FUNC15(dip);

	rc = FUNC21(tid, 2, &iplist[0], 0);

      out3:
	FUNC22(tid);
	FUNC17(&FUNC1(ip)->commit_mutex);
	FUNC17(&FUNC1(dip)->commit_mutex);
	if (rc) {
		FUNC7(ip);
		ip->i_nlink = 0;
		FUNC23(ip);
		FUNC10(ip);
	} else {
		FUNC3(dentry, ip);
		FUNC23(ip);
	}

      out2:
	FUNC6(&dname);

      out1:

	FUNC12("jfs_create: rc:%d", rc);
	return rc;
}