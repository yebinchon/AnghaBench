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
typedef  int /*<<< orphan*/  umode_t ;
struct inode {int /*<<< orphan*/  i_gid; TYPE_1__* i_sb; } ;
struct iattr {unsigned int ia_valid; int /*<<< orphan*/  ia_mode; void* ia_ctime; void* ia_mtime; void* ia_atime; scalar_t__ ia_gid; scalar_t__ ia_uid; } ;
struct dentry {struct configfs_dirent* d_fsdata; struct inode* d_inode; } ;
struct configfs_dirent {int /*<<< orphan*/  s_mode; struct iattr* s_iattr; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_time_gran; } ;

/* Variables and functions */
 unsigned int ATTR_ATIME ; 
 unsigned int ATTR_CTIME ; 
 unsigned int ATTR_GID ; 
 unsigned int ATTR_MODE ; 
 unsigned int ATTR_MTIME ; 
 unsigned int ATTR_UID ; 
 int /*<<< orphan*/  CAP_FSETID ; 
 void* CURRENT_TIME ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  S_ISGID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct inode*,struct iattr*) ; 
 int FUNC3 (struct inode*,struct iattr*) ; 
 struct iattr* FUNC4 (int,int /*<<< orphan*/ ) ; 
 void* FUNC5 (void*,int /*<<< orphan*/ ) ; 

int FUNC6(struct dentry * dentry, struct iattr * iattr)
{
	struct inode * inode = dentry->d_inode;
	struct configfs_dirent * sd = dentry->d_fsdata;
	struct iattr * sd_iattr;
	unsigned int ia_valid = iattr->ia_valid;
	int error;

	if (!sd)
		return -EINVAL;

	sd_iattr = sd->s_iattr;

	error = FUNC2(inode, iattr);
	if (error)
		return error;

	error = FUNC3(inode, iattr);
	if (error)
		return error;

	if (!sd_iattr) {
		/* setting attributes for the first time, allocate now */
		sd_iattr = FUNC4(sizeof(struct iattr), GFP_KERNEL);
		if (!sd_iattr)
			return -ENOMEM;
		/* assign default attributes */
		sd_iattr->ia_mode = sd->s_mode;
		sd_iattr->ia_uid = 0;
		sd_iattr->ia_gid = 0;
		sd_iattr->ia_atime = sd_iattr->ia_mtime = sd_iattr->ia_ctime = CURRENT_TIME;
		sd->s_iattr = sd_iattr;
	}

	/* attributes were changed atleast once in past */

	if (ia_valid & ATTR_UID)
		sd_iattr->ia_uid = iattr->ia_uid;
	if (ia_valid & ATTR_GID)
		sd_iattr->ia_gid = iattr->ia_gid;
	if (ia_valid & ATTR_ATIME)
		sd_iattr->ia_atime = FUNC5(iattr->ia_atime,
						inode->i_sb->s_time_gran);
	if (ia_valid & ATTR_MTIME)
		sd_iattr->ia_mtime = FUNC5(iattr->ia_mtime,
						inode->i_sb->s_time_gran);
	if (ia_valid & ATTR_CTIME)
		sd_iattr->ia_ctime = FUNC5(iattr->ia_ctime,
						inode->i_sb->s_time_gran);
	if (ia_valid & ATTR_MODE) {
		umode_t mode = iattr->ia_mode;

		if (!FUNC1(inode->i_gid) && !FUNC0(CAP_FSETID))
			mode &= ~S_ISGID;
		sd_iattr->ia_mode = sd->s_mode = mode;
	}

	return error;
}