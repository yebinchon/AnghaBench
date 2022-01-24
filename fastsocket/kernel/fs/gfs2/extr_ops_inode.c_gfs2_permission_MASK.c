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
struct inode {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; } ;
struct gfs2_holder {int dummy; } ;

/* Variables and functions */
 int EACCES ; 
 struct gfs2_inode* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  LM_FLAG_ANY ; 
 int /*<<< orphan*/  LM_ST_SHARED ; 
 int MAY_WRITE ; 
 int FUNC2 (struct inode*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gfs2_check_acl ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_holder*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_holder*) ; 

int FUNC6(struct inode *inode, int mask)
{
	struct gfs2_inode *ip = FUNC0(inode);
	struct gfs2_holder i_gh;
	int error;
	int unlock = 0;

	if (FUNC4(ip->i_gl) == NULL) {
		error = FUNC5(ip->i_gl, LM_ST_SHARED, LM_FLAG_ANY, &i_gh);
		if (error)
			return error;
		unlock = 1;
	}

	if ((mask & MAY_WRITE) && FUNC1(inode))
		error = -EACCES;
	else
		error = FUNC2(inode, mask, gfs2_check_acl);
	if (unlock)
		FUNC3(&i_gh);

	return error;
}