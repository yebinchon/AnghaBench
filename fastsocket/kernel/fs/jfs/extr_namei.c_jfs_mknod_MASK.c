#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tid_t ;
struct TYPE_4__ {int /*<<< orphan*/  ixpxd; } ;
struct tblock {TYPE_2__ u; int /*<<< orphan*/  ino; int /*<<< orphan*/  xflag; } ;
struct jfs_inode_info {int /*<<< orphan*/  commit_mutex; int /*<<< orphan*/  dev; int /*<<< orphan*/  ixpxd; } ;
struct inode {scalar_t__ i_nlink; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mode; int /*<<< orphan*/ * i_op; int /*<<< orphan*/  i_ino; int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;
struct component_name {int dummy; } ;
struct btstack {int dummy; } ;
typedef  int /*<<< orphan*/  ino_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  COMMIT_CREATE ; 
 int /*<<< orphan*/  COMMIT_MUTEX_CHILD ; 
 int /*<<< orphan*/  COMMIT_MUTEX_PARENT ; 
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  JFS_CREATE ; 
 struct jfs_inode_info* FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct dentry*,struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*) ; 
 int FUNC5 (struct inode*,struct component_name*,int /*<<< orphan*/ *,struct btstack*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct component_name*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int FUNC8 (struct component_name*,struct dentry*) ; 
 struct inode* FUNC9 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  jfs_file_inode_operations ; 
 int /*<<< orphan*/  FUNC12 (char*,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int FUNC14 (int /*<<< orphan*/ ,struct inode*,struct inode*) ; 
 int /*<<< orphan*/  FUNC15 (struct inode*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 struct tblock* FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC23 (int /*<<< orphan*/ ,int,struct inode**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 

__attribute__((used)) static int FUNC26(struct inode *dir, struct dentry *dentry,
		int mode, dev_t rdev)
{
	struct jfs_inode_info *jfs_ip;
	struct btstack btstack;
	struct component_name dname;
	ino_t ino;
	struct inode *ip;
	struct inode *iplist[2];
	int rc;
	tid_t tid;
	struct tblock *tblk;

	if (!FUNC19(rdev))
		return -EINVAL;

	FUNC12("jfs_mknod: %s", dentry->d_name.name);

	if ((rc = FUNC8(&dname, dentry)))
		goto out;

	ip = FUNC9(dir, mode);
	if (FUNC0(ip)) {
		rc = FUNC2(ip);
		goto out1;
	}
	jfs_ip = FUNC1(ip);

	tid = FUNC22(dir->i_sb, 0);

	FUNC16(&FUNC1(dir)->commit_mutex, COMMIT_MUTEX_PARENT);
	FUNC16(&FUNC1(ip)->commit_mutex, COMMIT_MUTEX_CHILD);

	rc = FUNC13(tid, ip, dir);
	if (rc)
		goto out3;

	rc = FUNC14(tid, ip, dir);
	if (rc) {
		FUNC21(tid, 0);
		goto out3;
	}

	if ((rc = FUNC5(dir, &dname, &ino, &btstack, JFS_CREATE))) {
		FUNC21(tid, 0);
		goto out3;
	}

	tblk = FUNC20(tid);
	tblk->xflag |= COMMIT_CREATE;
	tblk->ino = ip->i_ino;
	tblk->u.ixpxd = FUNC1(ip)->ixpxd;

	ino = ip->i_ino;
	if ((rc = FUNC4(tid, dir, &dname, &ino, &btstack))) {
		FUNC21(tid, 0);
		goto out3;
	}

	ip->i_op = &jfs_file_inode_operations;
	jfs_ip->dev = FUNC18(rdev);
	FUNC10(ip, ip->i_mode, rdev);

	FUNC15(ip);

	dir->i_ctime = dir->i_mtime = CURRENT_TIME;

	FUNC15(dir);

	iplist[0] = dir;
	iplist[1] = ip;
	rc = FUNC23(tid, 2, iplist, 0);

      out3:
	FUNC24(tid);
	FUNC17(&FUNC1(ip)->commit_mutex);
	FUNC17(&FUNC1(dir)->commit_mutex);
	if (rc) {
		FUNC7(ip);
		ip->i_nlink = 0;
		FUNC25(ip);
		FUNC11(ip);
	} else {
		FUNC3(dentry, ip);
		FUNC25(ip);
	}

      out1:
	FUNC6(&dname);

      out:
	FUNC12("jfs_mknod: returning %d", rc);
	return rc;
}