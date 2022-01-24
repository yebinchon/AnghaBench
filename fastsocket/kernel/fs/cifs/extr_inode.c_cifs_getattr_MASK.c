#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vfsmount {int dummy; } ;
struct kstat {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  ino; int /*<<< orphan*/  blksize; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_sb; } ;
struct cifs_tcon {int /*<<< orphan*/  unix_ext; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  uniqueid; int /*<<< orphan*/  clientCanCacheRead; } ;
struct TYPE_4__ {scalar_t__ nrpages; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  CIFS_MAX_MSGSIZE ; 
 int CIFS_MOUNT_CIFS_ACL ; 
 int CIFS_MOUNT_MULTIUSER ; 
 int CIFS_MOUNT_OVERR_GID ; 
 int CIFS_MOUNT_OVERR_UID ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dentry*) ; 
 struct cifs_tcon* FUNC3 (struct cifs_sb_info*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int) ; 

int FUNC9(struct vfsmount *mnt, struct dentry *dentry,
		 struct kstat *stat)
{
	struct cifs_sb_info *cifs_sb = FUNC1(dentry->d_sb);
	struct cifs_tcon *tcon = FUNC3(cifs_sb);
	struct inode *inode = dentry->d_inode;
	int rc;

	/*
	 * We need to be sure that all dirty pages are written and the server
	 * has actual ctime, mtime and file length.
	 */
	if (!FUNC0(inode)->clientCanCacheRead && inode->i_mapping &&
	    inode->i_mapping->nrpages != 0) {
		rc = FUNC6(inode->i_mapping);
		if (rc) {
			FUNC8(inode->i_mapping, rc);
			return rc;
		}
	}

	rc = FUNC2(dentry);
	if (rc)
		return rc;

	FUNC7(inode, stat);
	stat->blksize = CIFS_MAX_MSGSIZE;
	stat->ino = FUNC0(inode)->uniqueid;

	/*
	 * If on a multiuser mount without unix extensions or cifsacl being
	 * enabled, and the admin hasn't overridden them, set the ownership
	 * to the fsuid/fsgid of the current process.
	 */
	if ((cifs_sb->mnt_cifs_flags & CIFS_MOUNT_MULTIUSER) &&
	    !(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_CIFS_ACL) &&
	    !tcon->unix_ext) {
		if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_UID))
			stat->uid = FUNC5();
		if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_OVERR_GID))
			stat->gid = FUNC4();
	}
	return rc;
}