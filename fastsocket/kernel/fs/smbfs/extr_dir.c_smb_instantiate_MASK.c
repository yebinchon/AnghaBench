#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct smb_sb_info {int /*<<< orphan*/  generation; } ;
struct smb_inode_info {int /*<<< orphan*/  open; int /*<<< orphan*/  access; int /*<<< orphan*/  fileid; } ;
struct smb_fattr {int /*<<< orphan*/  f_ino; } ;
struct inode {int dummy; } ;
struct dentry {int /*<<< orphan*/  d_sb; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int EACCES ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct smb_inode_info* FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  SMB_O_RDWR ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dentry*,struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 struct smb_sb_info* FUNC6 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*,int /*<<< orphan*/ ) ; 
 struct inode* FUNC8 (int /*<<< orphan*/ ,struct smb_fattr*) ; 
 int FUNC9 (struct dentry*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC10 (struct dentry*) ; 

__attribute__((used)) static int
FUNC11(struct dentry *dentry, __u16 fileid, int have_id)
{
	struct smb_sb_info *server = FUNC6(dentry);
	struct inode *inode;
	int error;
	struct smb_fattr fattr;

	FUNC3("file %s/%s, fileid=%u\n", FUNC0(dentry), fileid);

	error = FUNC9(dentry, &fattr);
	if (error)
		goto out_close;

	FUNC10(dentry);
	fattr.f_ino = FUNC5(dentry->d_sb, 2);
	inode = FUNC8(dentry->d_sb, &fattr);
	if (!inode)
		goto out_no_inode;

	if (have_id) {
		struct smb_inode_info *ei = FUNC2(inode);
		ei->fileid = fileid;
		ei->access = SMB_O_RDWR;
		ei->open = server->generation;
	}
	FUNC4(dentry, inode);
out:
	return error;

out_no_inode:
	error = -EACCES;
out_close:
	if (have_id) {
		FUNC1("%s/%s failed, error=%d, closing %u\n",
			 FUNC0(dentry), error, fileid);
		FUNC7(dentry, fileid);
	}
	goto out;
}