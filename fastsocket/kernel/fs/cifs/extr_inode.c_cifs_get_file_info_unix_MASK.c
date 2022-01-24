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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_3__ {TYPE_2__* dentry; } ;
struct file {struct cifsFileInfo* private_data; TYPE_1__ f_path; } ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {int dummy; } ;
struct cifsFileInfo {int /*<<< orphan*/  netfid; int /*<<< orphan*/  tlink; } ;
struct TYPE_4__ {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  FILE_UNIX_BASIC_INFO ;

/* Variables and functions */
 int FUNC0 (int,struct cifs_tcon*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct cifs_sb_info* FUNC1 (int /*<<< orphan*/ ) ; 
 int EREMOTE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct cifs_fattr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*,struct cifs_fattr*) ; 
 int /*<<< orphan*/  FUNC6 (struct cifs_fattr*,int /*<<< orphan*/ *,struct cifs_sb_info*) ; 
 struct cifs_tcon* FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct file *filp)
{
	int rc;
	int xid;
	FILE_UNIX_BASIC_INFO find_data;
	struct cifs_fattr fattr;
	struct inode *inode = filp->f_path.dentry->d_inode;
	struct cifs_sb_info *cifs_sb = FUNC1(inode->i_sb);
	struct cifsFileInfo *cfile = filp->private_data;
	struct cifs_tcon *tcon = FUNC7(cfile->tlink);

	xid = FUNC3();
	rc = FUNC0(xid, tcon, cfile->netfid, &find_data);
	if (!rc) {
		FUNC6(&fattr, &find_data, cifs_sb);
	} else if (rc == -EREMOTE) {
		FUNC4(&fattr, inode->i_sb);
		rc = 0;
	}

	FUNC5(inode, &fattr);
	FUNC2(xid);
	return rc;
}