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
typedef  scalar_t__ uid_t ;
struct inode {int /*<<< orphan*/  i_mutex; int /*<<< orphan*/  i_mode; } ;
struct iattr {int ia_valid; scalar_t__ ia_gid; scalar_t__ ia_uid; } ;
struct dentry {struct inode* d_inode; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int ATTR_CTIME ; 
 int ATTR_GID ; 
 int ATTR_KILL_PRIV ; 
 int ATTR_KILL_SGID ; 
 int ATTR_KILL_SUID ; 
 int ATTR_UID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dentry*,struct iattr*) ; 

__attribute__((used)) static int FUNC4(struct dentry * dentry, uid_t user, gid_t group)
{
	struct inode *inode = dentry->d_inode;
	int error;
	struct iattr newattrs;

	newattrs.ia_valid =  ATTR_CTIME;
	if (user != (uid_t) -1) {
		newattrs.ia_valid |= ATTR_UID;
		newattrs.ia_uid = user;
	}
	if (group != (gid_t) -1) {
		newattrs.ia_valid |= ATTR_GID;
		newattrs.ia_gid = group;
	}
	if (!FUNC0(inode->i_mode))
		newattrs.ia_valid |=
			ATTR_KILL_SUID | ATTR_KILL_SGID | ATTR_KILL_PRIV;
	FUNC1(&inode->i_mutex);
	error = FUNC3(dentry, &newattrs);
	FUNC2(&inode->i_mutex);

	return error;
}