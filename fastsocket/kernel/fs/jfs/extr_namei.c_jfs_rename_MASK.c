#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct tlock {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {struct inode* ip; } ;
struct tblock {TYPE_1__ u; int /*<<< orphan*/  xflag; } ;
struct metapage {int dummy; } ;
struct lv {int length; scalar_t__ offset; } ;
struct inode {scalar_t__ i_ino; scalar_t__ i_nlink; int i_size; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_sb; void* i_mtime; void* i_ctime; } ;
struct dt_lock {scalar_t__ index; struct lv* lv; } ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct dentry {struct inode* d_inode; TYPE_4__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int s64 ;
typedef  scalar_t__ ino_t ;
struct TYPE_7__ {int /*<<< orphan*/  idotdot; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
struct TYPE_10__ {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  bxflag; TYPE_3__ i_dtroot; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  COMMIT_DELETE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  COMMIT_MUTEX_SECOND_PARENT ; 
 int /*<<< orphan*/  COMMIT_MUTEX_VICTIM ; 
 int /*<<< orphan*/  COMMIT_Nolink ; 
 int COMMIT_SYNC ; 
 int /*<<< orphan*/  COMMIT_Stale ; 
 void* CURRENT_TIME ; 
 int EIO ; 
 int EMLINK ; 
 int ENOENT ; 
 int ENOTEMPTY ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 TYPE_5__* FUNC3 (struct inode*) ; 
 scalar_t__ JFS_LINK_MAX ; 
 int /*<<< orphan*/  JFS_LOOKUP ; 
 int /*<<< orphan*/  JFS_REMOVE ; 
 int /*<<< orphan*/  JFS_RENAME ; 
 int /*<<< orphan*/  RDWRLOCK_NORMAL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct inode*) ; 
 int FUNC7 (int /*<<< orphan*/ ,struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 void* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct inode*,struct component_name*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct inode*,struct component_name*,scalar_t__*,struct btstack*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct inode*,struct component_name*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct inode*,struct component_name*,scalar_t__*,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct component_name*) ; 
 int FUNC17 (struct component_name*,struct dentry*) ; 
 int /*<<< orphan*/  FUNC18 (struct inode*) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct inode*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ,struct inode*) ; 
 scalar_t__ FUNC28 (int /*<<< orphan*/ ,struct inode*) ; 
 struct tblock* FUNC29 (int /*<<< orphan*/ ) ; 
 int tlckBTROOT ; 
 int tlckDTREE ; 
 int tlckRELINK ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC32 (int /*<<< orphan*/ ,int,struct inode**,int) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ ) ; 
 struct tlock* FUNC34 (int /*<<< orphan*/ ,struct inode*,struct metapage*,int) ; 
 int /*<<< orphan*/  FUNC35 (struct inode*) ; 
 int FUNC36 (int /*<<< orphan*/ ,struct inode*,int) ; 

__attribute__((used)) static int FUNC37(struct inode *old_dir, struct dentry *old_dentry,
	       struct inode *new_dir, struct dentry *new_dentry)
{
	struct btstack btstack;
	ino_t ino;
	struct component_name new_dname;
	struct inode *new_ip;
	struct component_name old_dname;
	struct inode *old_ip;
	int rc;
	tid_t tid;
	struct tlock *tlck;
	struct dt_lock *dtlck;
	struct lv *lv;
	int ipcount;
	struct inode *iplist[4];
	struct tblock *tblk;
	s64 new_size = 0;
	int commit_flag;


	FUNC21("jfs_rename: %s %s", old_dentry->d_name.name,
		 new_dentry->d_name.name);

	old_ip = old_dentry->d_inode;
	new_ip = new_dentry->d_inode;

	if ((rc = FUNC17(&old_dname, old_dentry)))
		goto out1;

	if ((rc = FUNC17(&new_dname, new_dentry)))
		goto out2;

	/*
	 * Make sure source inode number is what we think it is
	 */
	rc = FUNC15(old_dir, &old_dname, &ino, &btstack, JFS_LOOKUP);
	if (rc || (ino != old_ip->i_ino)) {
		rc = -ENOENT;
		goto out3;
	}

	/*
	 * Make sure dest inode number (if any) is what we think it is
	 */
	rc = FUNC15(new_dir, &new_dname, &ino, &btstack, JFS_LOOKUP);
	if (!rc) {
		if ((!new_ip) || (ino != new_ip->i_ino)) {
			rc = -ESTALE;
			goto out3;
		}
	} else if (rc != -ENOENT)
		goto out3;
	else if (new_ip) {
		/* no entry exists, but one was expected */
		rc = -ESTALE;
		goto out3;
	}

	if (FUNC4(old_ip->i_mode)) {
		if (new_ip) {
			if (!FUNC12(new_ip)) {
				rc = -ENOTEMPTY;
				goto out3;
			}
		} else if ((new_dir != old_dir) &&
			   (new_dir->i_nlink == JFS_LINK_MAX)) {
			rc = -EMLINK;
			goto out3;
		}
	} else if (new_ip) {
		FUNC1(new_ip, RDWRLOCK_NORMAL);
		/* Init inode for quota operations. */
		FUNC35(new_ip);
	}

	/*
	 * The real work starts here
	 */
	tid = FUNC31(new_dir->i_sb, 0);

	/*
	 * How do we know the locking is safe from deadlocks?
	 * The vfs does the hard part for us.  Any time we are taking nested
	 * commit_mutexes, the vfs already has i_mutex held on the parent.
	 * Here, the vfs has already taken i_mutex on both old_dir and new_dir.
	 */
	FUNC25(&FUNC3(new_dir)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC25(&FUNC3(old_ip)->commit_mutex, COMMIT_MUTEX_CHILD);
	if (old_dir != new_dir)
		FUNC25(&FUNC3(old_dir)->commit_mutex,
				  COMMIT_MUTEX_SECOND_PARENT);

	if (new_ip) {
		FUNC25(&FUNC3(new_ip)->commit_mutex,
				  COMMIT_MUTEX_VICTIM);
		/*
		 * Change existing directory entry to new inode number
		 */
		ino = new_ip->i_ino;
		rc = FUNC14(tid, new_dir, &new_dname, &ino,
			      old_ip->i_ino, JFS_RENAME);
		if (rc)
			goto out4;
		FUNC10(new_ip);
		if (FUNC4(new_ip->i_mode)) {
			FUNC10(new_ip);
			if (new_ip->i_nlink) {
				FUNC26(&FUNC3(new_ip)->commit_mutex);
				if (old_dir != new_dir)
					FUNC26(&FUNC3(old_dir)->commit_mutex);
				FUNC26(&FUNC3(old_ip)->commit_mutex);
				FUNC26(&FUNC3(new_dir)->commit_mutex);
				if (!FUNC4(old_ip->i_mode) && new_ip)
					FUNC2(new_ip);
				FUNC20(new_ip->i_sb,
					  "jfs_rename: new_ip->i_nlink != 0");
				return -EIO;
			}
			tblk = FUNC29(tid);
			tblk->xflag |= COMMIT_DELETE;
			tblk->u.ip = new_ip;
		} else if (new_ip->i_nlink == 0) {
			FUNC5(!FUNC28(COMMIT_Nolink, new_ip));
			/* free block resources */
			if ((new_size = FUNC7(tid, new_ip)) < 0) {
				FUNC30(tid, 1);	/* Marks FS Dirty */
				rc = new_size;
				goto out4;
			}
			tblk = FUNC29(tid);
			tblk->xflag |= COMMIT_DELETE;
			tblk->u.ip = new_ip;
		} else {
			new_ip->i_ctime = CURRENT_TIME;
			FUNC23(new_ip);
		}
	} else {
		/*
		 * Add new directory entry
		 */
		rc = FUNC15(new_dir, &new_dname, &ino, &btstack,
			      JFS_CREATE);
		if (rc) {
			FUNC19("jfs_rename didn't expect dtSearch to fail "
				"w/rc = %d", rc);
			goto out4;
		}

		ino = old_ip->i_ino;
		rc = FUNC13(tid, new_dir, &new_dname, &ino, &btstack);
		if (rc) {
			if (rc == -EIO)
				FUNC19("jfs_rename: dtInsert returned -EIO");
			goto out4;
		}
		if (FUNC4(old_ip->i_mode))
			FUNC18(new_dir);
	}
	/*
	 * Remove old directory entry
	 */

	ino = old_ip->i_ino;
	rc = FUNC11(tid, old_dir, &old_dname, &ino, JFS_REMOVE);
	if (rc) {
		FUNC19("jfs_rename did not expect dtDelete to return rc = %d",
			rc);
		FUNC30(tid, 1);	/* Marks Filesystem dirty */
		goto out4;
	}
	if (FUNC4(old_ip->i_mode)) {
		FUNC10(old_dir);
		if (old_dir != new_dir) {
			/*
			 * Change inode number of parent for moved directory
			 */

			FUNC3(old_ip)->i_dtroot.header.idotdot =
				FUNC8(new_dir->i_ino);

			/* Linelock header of dtree */
			tlck = FUNC34(tid, old_ip,
				    (struct metapage *) &FUNC3(old_ip)->bxflag,
				      tlckDTREE | tlckBTROOT | tlckRELINK);
			dtlck = (struct dt_lock *) & tlck->lock;
			FUNC0(dtlck->index == 0);
			lv = & dtlck->lv[0];
			lv->offset = 0;
			lv->length = 1;
			dtlck->index++;
		}
	}

	/*
	 * Update ctime on changed/moved inodes & mark dirty
	 */
	old_ip->i_ctime = CURRENT_TIME;
	FUNC23(old_ip);

	new_dir->i_ctime = new_dir->i_mtime = FUNC9(new_dir->i_sb);
	FUNC23(new_dir);

	/* Build list of inodes modified by this transaction */
	ipcount = 0;
	iplist[ipcount++] = old_ip;
	if (new_ip)
		iplist[ipcount++] = new_ip;
	iplist[ipcount++] = old_dir;

	if (old_dir != new_dir) {
		iplist[ipcount++] = new_dir;
		old_dir->i_ctime = old_dir->i_mtime = CURRENT_TIME;
		FUNC23(old_dir);
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

	rc = FUNC32(tid, ipcount, iplist, commit_flag);

      out4:
	FUNC33(tid);
	if (new_ip)
		FUNC26(&FUNC3(new_ip)->commit_mutex);
	if (old_dir != new_dir)
		FUNC26(&FUNC3(old_dir)->commit_mutex);
	FUNC26(&FUNC3(old_ip)->commit_mutex);
	FUNC26(&FUNC3(new_dir)->commit_mutex);

	while (new_size && (rc == 0)) {
		tid = FUNC31(new_ip->i_sb, 0);
		FUNC24(&FUNC3(new_ip)->commit_mutex);
		new_size = FUNC36(tid, new_ip, new_size);
		if (new_size < 0) {
			FUNC30(tid, 1);
			rc = new_size;
		} else
			rc = FUNC32(tid, 1, &new_ip, COMMIT_SYNC);
		FUNC33(tid);
		FUNC26(&FUNC3(new_ip)->commit_mutex);
	}
	if (new_ip && (new_ip->i_nlink == 0))
		FUNC27(COMMIT_Nolink, new_ip);
      out3:
	FUNC16(&new_dname);
      out2:
	FUNC16(&old_dname);
      out1:
	if (new_ip && !FUNC4(new_ip->i_mode))
		FUNC2(new_ip);
	/*
	 * Truncating the directory index table is not guaranteed.  It
	 * may need to be done iteratively
	 */
	if (FUNC28(COMMIT_Stale, old_dir)) {
		if (old_dir->i_size > 1)
			FUNC22(old_dir, 0);

		FUNC6(COMMIT_Stale, old_dir);
	}

	FUNC21("jfs_rename: returning %d", rc);
	return rc;
}