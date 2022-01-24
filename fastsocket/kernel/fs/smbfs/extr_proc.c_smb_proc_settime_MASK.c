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
struct TYPE_4__ {scalar_t__ protocol; } ;
struct smb_sb_info {TYPE_2__* mnt; TYPE_1__ opt; } ;
struct smb_fattr {int /*<<< orphan*/  f_mtime; } ;
struct inode {int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_mode; } ;
struct dentry {struct inode* d_inode; } ;
struct TYPE_6__ {scalar_t__ access; } ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int EACCES ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int SMB_MOUNT_WIN95 ; 
 scalar_t__ SMB_O_RDONLY ; 
 scalar_t__ SMB_PROTOCOL_LANMAN2 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 struct smb_sb_info* FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int FUNC6 (struct smb_sb_info*,struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct smb_sb_info*,struct dentry*,scalar_t__) ; 
 int FUNC8 (struct smb_sb_info*,struct inode*,struct smb_fattr*) ; 
 int FUNC9 (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ; 

int
FUNC10(struct dentry *dentry, struct smb_fattr *fattr)
{
	struct smb_sb_info *server = FUNC4(dentry);
	struct inode *inode = dentry->d_inode;
	int result;

	FUNC3("setting %s/%s, open=%d\n",
		FUNC0(dentry), FUNC5(inode));

	/* setting the time on a Win95 server fails (tridge) */
	if (server->opt.protocol >= SMB_PROTOCOL_LANMAN2 && 
	    !(server->mnt->flags & SMB_MOUNT_WIN95)) {
		if (FUNC5(inode) && FUNC1(inode)->access != SMB_O_RDONLY)
			result = FUNC8(server, inode, fattr);
		else
			result = FUNC9(server, dentry, fattr);
	} else {
		/*
		 * Fail silently on directories ... timestamp can't be set?
		 */
		result = 0;
		if (FUNC2(inode->i_mode)) {
			/*
			 * Set the mtime by opening and closing the file.
			 * Note that the file is opened read-only, but this
			 * still allows us to set the date (tridge)
			 */
			result = -EACCES;
			if (!FUNC5(inode))
				FUNC7(server, dentry, SMB_O_RDONLY);
			if (FUNC5(inode)) {
				inode->i_mtime = fattr->f_mtime;
				result = FUNC6(server, inode);
			}
		}
	}

	return result;
}