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
struct TYPE_2__ {scalar_t__ fs_uid; scalar_t__ fs_gid; scalar_t__ quiet; } ;
struct msdos_sb_info {TYPE_1__ options; } ;
struct inode {scalar_t__ i_size; } ;
struct iattr {int ia_valid; scalar_t__ ia_size; scalar_t__ ia_uid; scalar_t__ ia_gid; int ia_mode; } ;
struct dentry {struct inode* d_inode; int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int ATTR_GID ; 
 int ATTR_MODE ; 
 int ATTR_SIZE ; 
 int ATTR_UID ; 
 int EPERM ; 
 int FAT_VALID_MODE ; 
 struct msdos_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int TIMES_SET_FLAGS ; 
 scalar_t__ FUNC1 (struct msdos_sb_info*,struct inode*) ; 
 int FUNC2 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct msdos_sb_info*,struct inode*,int*) ; 
 int FUNC4 (struct inode*,struct iattr*) ; 
 int FUNC5 (struct inode*,struct iattr*) ; 

int FUNC6(struct dentry *dentry, struct iattr *attr)
{
	struct msdos_sb_info *sbi = FUNC0(dentry->d_sb);
	struct inode *inode = dentry->d_inode;
	unsigned int ia_valid;
	int error;

	/*
	 * Expand the file. Since inode_setattr() updates ->i_size
	 * before calling the ->truncate(), but FAT needs to fill the
	 * hole before it.
	 */
	if (attr->ia_valid & ATTR_SIZE) {
		if (attr->ia_size > inode->i_size) {
			error = FUNC2(inode, attr->ia_size);
			if (error || attr->ia_valid == ATTR_SIZE)
				goto out;
			attr->ia_valid &= ~ATTR_SIZE;
		}
	}

	/* Check for setting the inode time. */
	ia_valid = attr->ia_valid;
	if (ia_valid & TIMES_SET_FLAGS) {
		if (FUNC1(sbi, inode))
			attr->ia_valid &= ~TIMES_SET_FLAGS;
	}

	error = FUNC4(inode, attr);
	attr->ia_valid = ia_valid;
	if (error) {
		if (sbi->options.quiet)
			error = 0;
		goto out;
	}

	if (((attr->ia_valid & ATTR_UID) &&
	     (attr->ia_uid != sbi->options.fs_uid)) ||
	    ((attr->ia_valid & ATTR_GID) &&
	     (attr->ia_gid != sbi->options.fs_gid)) ||
	    ((attr->ia_valid & ATTR_MODE) &&
	     (attr->ia_mode & ~FAT_VALID_MODE)))
		error = -EPERM;

	if (error) {
		if (sbi->options.quiet)
			error = 0;
		goto out;
	}

	/*
	 * We don't return -EPERM here. Yes, strange, but this is too
	 * old behavior.
	 */
	if (attr->ia_valid & ATTR_MODE) {
		if (FUNC3(sbi, inode, &attr->ia_mode) < 0)
			attr->ia_valid &= ~ATTR_MODE;
	}

	if (attr->ia_valid)
		error = FUNC5(inode, attr);
out:
	return error;
}