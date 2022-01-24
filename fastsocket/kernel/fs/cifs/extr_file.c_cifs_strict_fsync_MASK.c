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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_6__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; struct cifsFileInfo* private_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;
struct dentry {TYPE_3__ d_name; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsFileInfo {int /*<<< orphan*/  netfid; int /*<<< orphan*/  tlink; } ;
struct TYPE_8__ {int /*<<< orphan*/  clientCanCacheRead; } ;
struct TYPE_5__ {struct inode* d_inode; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC1 (struct inode*) ; 
 int CIFS_MOUNT_NOSSYNC ; 
 struct cifs_sb_info* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int,...) ; 
 int FUNC6 (struct inode*) ; 
 struct cifs_tcon* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct file *file, struct dentry *dentry, int datasync)
{
	int xid;
	int rc = 0;
	struct cifs_tcon *tcon;
	struct cifsFileInfo *smbfile = file->private_data;
	struct inode *inode = file->f_path.dentry->d_inode;
	struct cifs_sb_info *cifs_sb = FUNC2(inode->i_sb);

	xid = FUNC4();

	FUNC5(1, "Sync file - name: %s datasync: 0x%x",
		dentry->d_name.name, datasync);

	if (!FUNC1(inode)->clientCanCacheRead) {
		rc = FUNC6(inode);
		if (rc) {
			FUNC5(1, "rc: %d during invalidate phase", rc);
			rc = 0; /* don't care about it in fsync */
		}
	}

	tcon = FUNC7(smbfile->tlink);
	if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOSSYNC))
		rc = FUNC0(xid, tcon, smbfile->netfid);

	FUNC3(xid);
	return rc;
}