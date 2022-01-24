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
struct vfsmount {int dummy; } ;
struct kstat {int dummy; } ;
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;
struct dentry {struct inode* d_inode; } ;

/* Variables and functions */
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int /*<<< orphan*/  FUNC1 (struct inode*,struct kstat*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_holder*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 

__attribute__((used)) static int FUNC5(struct vfsmount *mnt, struct dentry *dentry,
			struct kstat *stat)
{
	struct inode *inode = dentry->d_inode;
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder gh;
	int error;
	int unlock = 0;

	if (FUNC3(ip->i_gl) == NULL) {
		error = FUNC4(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &gh);
		if (error)
			return error;
		unlock = 1;
	}

	FUNC1(inode, stat);
	if (unlock)
		FUNC2(&gh);

	return 0;
}