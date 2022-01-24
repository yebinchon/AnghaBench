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
struct TYPE_5__ {struct inode* ip; } ;
struct tblock {TYPE_2__ u; int /*<<< orphan*/  xflag; } ;
struct inode {scalar_t__ i_nlink; int i_size; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_ino; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_1__ d_name; struct inode* d_inode; } ;
struct component_name {int dummy; } ;
typedef  int s64 ;
typedef  int /*<<< orphan*/  ino_t ;
struct TYPE_6__ {int /*<<< orphan*/  commit_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  COMMIT_DELETE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  COMMIT_Nolink ; 
 int COMMIT_SYNC ; 
 int /*<<< orphan*/  COMMIT_Stale ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  JFS_REMOVE ; 
 int /*<<< orphan*/  RDWRLOCK_NORMAL ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct component_name*) ; 
 int FUNC9 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,struct inode*) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ ,struct inode*) ; 
 struct tblock* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,struct inode**,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int FUNC26 (int /*<<< orphan*/ ,struct inode*,int) ; 

__attribute__((used)) static int FUNC27(struct inode *dip, struct dentry *dentry)
{
	int rc;
	tid_t tid;		/* transaction id */
	struct inode *ip = dentry->d_inode;
	ino_t ino;
	struct component_name dname;	/* object name */
	struct inode *iplist[2];
	struct tblock *tblk;
	s64 new_size = 0;
	int commit_flag;

	FUNC12("jfs_unlink: dip:0x%p name:%s", dip, dentry->d_name.name);

	/* Init inode for quota operations. */
	FUNC25(ip);

	if ((rc = FUNC9(&dname, dentry)))
		goto out;

	FUNC1(ip, RDWRLOCK_NORMAL);

	tid = FUNC22(dip->i_sb, 0);

	FUNC16(&FUNC3(dip)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC16(&FUNC3(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	iplist[0] = dip;
	iplist[1] = ip;

	/*
	 * delete the entry of target file from parent directory
	 */
	ino = ip->i_ino;
	if ((rc = FUNC7(tid, dip, &dname, &ino, JFS_REMOVE))) {
		FUNC11("jfs_unlink: dtDelete returned %d", rc);
		if (rc == -EIO)
			FUNC21(tid, 1);	/* Marks FS Dirty */
		FUNC24(tid);
		FUNC17(&FUNC3(ip)->commit_mutex);
		FUNC17(&FUNC3(dip)->commit_mutex);
		FUNC2(ip);
		goto out1;
	}

	FUNC0(ip->i_nlink);

	ip->i_ctime = dip->i_ctime = dip->i_mtime = CURRENT_TIME;
	FUNC14(dip);

	/* update target's inode */
	FUNC10(ip);

	/*
	 *	commit zero link count object
	 */
	if (ip->i_nlink == 0) {
		FUNC4(!FUNC19(COMMIT_Nolink, ip));
		/* free block resources */
		if ((new_size = FUNC6(tid, ip)) < 0) {
			FUNC21(tid, 1);	/* Marks FS Dirty */
			FUNC24(tid);
			FUNC17(&FUNC3(ip)->commit_mutex);
			FUNC17(&FUNC3(dip)->commit_mutex);
			FUNC2(ip);
			rc = new_size;
			goto out1;
		}
		tblk = FUNC20(tid);
		tblk->xflag |= COMMIT_DELETE;
		tblk->u.ip = ip;
	}

	/*
	 * Incomplete truncate of file data can
	 * result in timing problems unless we synchronously commit the
	 * transaction.
	 */
	if (new_size)
		commit_flag = COMMIT_SYNC;
	else
		commit_flag = 0;

	/*
	 * If xtTruncate was incomplete, commit synchronously to avoid
	 * timing complications
	 */
	rc = FUNC23(tid, 2, &iplist[0], commit_flag);

	FUNC24(tid);

	FUNC17(&FUNC3(ip)->commit_mutex);
	FUNC17(&FUNC3(dip)->commit_mutex);

	while (new_size && (rc == 0)) {
		tid = FUNC22(dip->i_sb, 0);
		FUNC15(&FUNC3(ip)->commit_mutex);
		new_size = FUNC26(tid, ip, new_size);
		if (new_size < 0) {
			FUNC21(tid, 1);	/* Marks FS Dirty */
			rc = new_size;
		} else
			rc = FUNC23(tid, 2, &iplist[0], COMMIT_SYNC);
		FUNC24(tid);
		FUNC17(&FUNC3(ip)->commit_mutex);
	}

	if (ip->i_nlink == 0)
		FUNC18(COMMIT_Nolink, ip);

	FUNC2(ip);

	/*
	 * Truncating the directory index table is not guaranteed.  It
	 * may need to be done iteratively
	 */
	if (FUNC19(COMMIT_Stale, dip)) {
		if (dip->i_size > 1)
			FUNC13(dip, 0);

		FUNC5(COMMIT_Stale, dip);
	}

      out1:
	FUNC8(&dname);
      out:
	FUNC12("jfs_unlink: rc:%d", rc);
	return rc;
}