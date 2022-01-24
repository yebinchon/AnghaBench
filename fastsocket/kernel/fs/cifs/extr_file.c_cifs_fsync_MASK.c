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
struct TYPE_5__ {TYPE_3__* dentry; } ;
struct file {TYPE_2__ f_path; struct cifsFileInfo* private_data; } ;
struct dentry {int dummy; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsFileInfo {int /*<<< orphan*/  netfid; int /*<<< orphan*/  tlink; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_6__ {TYPE_1__ d_name; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_tcon*,int /*<<< orphan*/ ) ; 
 int CIFS_MOUNT_NOSSYNC ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ,int) ; 
 struct cifs_tcon* FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(struct file *file, struct dentry *dentry, int datasync)
{
	int xid;
	int rc = 0;
	struct cifs_tcon *tcon;
	struct cifsFileInfo *smbfile = file->private_data;
	struct cifs_sb_info *cifs_sb = FUNC1(file->f_path.dentry->d_sb);

	xid = FUNC3();

	FUNC4(1, "Sync file - name: %s datasync: 0x%x",
		file->f_path.dentry->d_name.name, datasync);

	tcon = FUNC5(smbfile->tlink);
	if (!(cifs_sb->mnt_cifs_flags & CIFS_MOUNT_NOSSYNC))
		rc = FUNC0(xid, tcon, smbfile->netfid);

	FUNC2(xid);
	return rc;
}