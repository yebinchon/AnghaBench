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
struct inode {int i_mode; scalar_t__ i_ino; int /*<<< orphan*/  i_sb; } ;
struct dentry {struct inode* d_inode; } ;
struct coda_vattr {int dummy; } ;
struct coda_inode_info {int c_flags; int /*<<< orphan*/  c_fid; } ;
typedef  scalar_t__ ino_t ;

/* Variables and functions */
 int C_FLUSH ; 
 int C_PURGE ; 
 int C_VATTR ; 
 int EIO ; 
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 int S_IFMT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,struct coda_vattr*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct coda_vattr*) ; 

int FUNC8(struct dentry *dentry)
{
	struct coda_vattr attr;
	int error = 0;
	int old_mode;
	ino_t old_ino;
	struct inode *inode = dentry->d_inode;
	struct coda_inode_info *cii = FUNC0(inode);

	FUNC4();
	if ( !cii->c_flags )
		goto ok;

	if (cii->c_flags & (C_VATTR | C_PURGE | C_FLUSH)) {
		error = FUNC7(inode->i_sb, &(cii->c_fid), &attr);
		if ( error )
			goto return_bad;

		/* this inode may be lost if:
		   - it's ino changed 
		   - type changes must be permitted for repair and
		   missing mount points.
		*/
		old_mode = inode->i_mode;
		old_ino = inode->i_ino;
		FUNC3(inode, &attr);

		if ((old_mode & S_IFMT) != (inode->i_mode & S_IFMT)) {
			FUNC5("Coda: inode %ld, fid %s changed type!\n",
			       inode->i_ino, FUNC1(&(cii->c_fid)));
		}

		/* the following can happen when a local fid is replaced 
		   with a global one, here we lose and declare the inode bad */
		if (inode->i_ino != old_ino)
			goto return_bad;
		
		FUNC2(inode, C_FLUSH);
		cii->c_flags &= ~(C_VATTR | C_PURGE | C_FLUSH);
	}

ok:
	FUNC6();
	return 0;

return_bad:
	FUNC6();
	return -EIO;
}