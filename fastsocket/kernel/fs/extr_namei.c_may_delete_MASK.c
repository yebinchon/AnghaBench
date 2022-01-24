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
struct inode {int /*<<< orphan*/  i_mode; } ;
struct dentry {int d_flags; struct inode* d_inode; TYPE_1__* d_parent; } ;
struct TYPE_2__ {struct inode* d_inode; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_TYPE_CHILD_DELETE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DCACHE_NFSFS_RENAMED ; 
 int EBUSY ; 
 int EISDIR ; 
 int ENOENT ; 
 int ENOTDIR ; 
 int EPERM ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 scalar_t__ FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (struct inode*) ; 
 scalar_t__ FUNC4 (struct dentry*) ; 
 scalar_t__ FUNC5 (struct inode*) ; 
 int MAY_EXEC ; 
 int MAY_WRITE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*,struct dentry*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct inode*,struct inode*) ; 
 int FUNC9 (struct inode*,int) ; 

__attribute__((used)) static int FUNC10(struct inode *dir,struct dentry *victim,int isdir)
{
	int error;

	if (!victim->d_inode)
		return -ENOENT;

	FUNC0(victim->d_parent->d_inode != dir);
	FUNC7(dir, victim, AUDIT_TYPE_CHILD_DELETE);

	error = FUNC9(dir, MAY_WRITE | MAY_EXEC);
	if (error)
		return error;
	if (FUNC1(dir))
		return -EPERM;
	if (FUNC8(dir, victim->d_inode)||FUNC1(victim->d_inode)||
	    FUNC3(victim->d_inode) || FUNC5(victim->d_inode))
		return -EPERM;
	if (isdir) {
		if (!FUNC6(victim->d_inode->i_mode))
			return -ENOTDIR;
		if (FUNC4(victim))
			return -EBUSY;
	} else if (FUNC6(victim->d_inode->i_mode))
		return -EISDIR;
	if (FUNC2(dir))
		return -ENOENT;
	if (victim->d_flags & DCACHE_NFSFS_RENAMED)
		return -EBUSY;
	return 0;
}