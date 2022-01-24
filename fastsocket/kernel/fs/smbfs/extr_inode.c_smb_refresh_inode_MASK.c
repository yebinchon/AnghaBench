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
struct smb_fattr {int f_mode; } ;
struct inode {int i_ino; int i_mode; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dentry*) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int,int) ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int FUNC7 (struct dentry*,struct smb_fattr*) ; 
 int /*<<< orphan*/  FUNC8 (struct dentry*) ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,struct smb_fattr*) ; 

__attribute__((used)) static int
FUNC10(struct dentry *dentry)
{
	struct inode *inode = dentry->d_inode;
	int error;
	struct smb_fattr fattr;

	error = FUNC7(dentry, &fattr);
	if (!error) {
		FUNC8(dentry);
		/*
		 * Check whether the type part of the mode changed,
		 * and don't update the attributes if it did.
		 *
		 * And don't dick with the root inode
		 */
		if (inode->i_ino == 2)
			return error;
		if (FUNC3(inode->i_mode))
			return error;	/* VFS will deal with it */

		if ((inode->i_mode & S_IFMT) == (fattr.f_mode & S_IFMT)) {
			FUNC9(inode, &fattr);
		} else {
			/*
			 * Big trouble! The inode has become a new object,
			 * so any operations attempted on it are invalid.
			 *
			 * To limit damage, mark the inode as bad so that
			 * subsequent lookup validations will fail.
			 */
			FUNC1("%s/%s changed mode, %07o to %07o\n",
				 FUNC0(dentry),
				 inode->i_mode, fattr.f_mode);

			fattr.f_mode = inode->i_mode; /* save mode */
			FUNC5(inode);
			inode->i_mode = fattr.f_mode; /* restore mode */
			/*
			 * No need to worry about unhashing the dentry: the
			 * lookup validation will see that the inode is bad.
			 * But we do want to invalidate the caches ...
			 */
			if (!FUNC2(inode->i_mode))
				FUNC4(inode);
			else
				FUNC6(inode);
			error = -EIO;
		}
	}
	return error;
}