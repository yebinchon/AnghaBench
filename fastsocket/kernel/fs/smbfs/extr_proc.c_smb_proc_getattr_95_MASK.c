#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct smb_sb_info {int dummy; } ;
struct smb_fattr {int /*<<< orphan*/  f_size; } ;
struct inode {int dummy; } ;
struct dentry {struct inode* d_inode; } ;
typedef  int /*<<< orphan*/  __u16 ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  fileid; } ;

/* Variables and functions */
 int SMB_F_LOCALWRITE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct smb_sb_info*,struct dentry*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC3 (struct smb_sb_info*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct smb_sb_info *server, struct dentry *dir,
		    struct smb_fattr *attr)
{
	struct inode *inode = dir->d_inode;
	int result;

	/* FIXME: why not use the "all" version? */
	result = FUNC2(server, dir, attr);
	if (result < 0)
		goto out;

	/*
	 * None of the getattr versions here can make win9x return the right
	 * filesize if there are changes made to an open file.
	 * A seek-to-end does return the right size, but we only need to do
	 * that on files we have written.
	 */
	if (inode && FUNC0(inode)->flags & SMB_F_LOCALWRITE &&
	    FUNC1(inode))
	{
		__u16 fileid = FUNC0(inode)->fileid;
		attr->f_size = FUNC3(server, fileid, 2, 0);
	}

out:
	return result;
}