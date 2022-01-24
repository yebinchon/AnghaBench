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
struct gfs2_inode {int i_diskflags; int /*<<< orphan*/  i_inode; } ;

/* Variables and functions */
 int GFS2_DIF_EA_INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_QUOTA_CHANGE ; 
 int FUNC1 (struct gfs2_inode*) ; 
 int FUNC2 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  ea_dealloc_unstuffed ; 
 int FUNC3 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_inode*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 

int FUNC7(struct gfs2_inode *ip)
{
	int error;

	error = FUNC6(FUNC0(&ip->i_inode));
	if (error)
		return error;

	error = FUNC4(ip, NO_QUOTA_CHANGE, NO_QUOTA_CHANGE);
	if (error)
		return error;

	error = FUNC3(ip, ea_dealloc_unstuffed, NULL);
	if (error)
		goto out_quota;

	if (ip->i_diskflags & GFS2_DIF_EA_INDIRECT) {
		error = FUNC2(ip);
		if (error)
			goto out_quota;
	}

	error = FUNC1(ip);

out_quota:
	FUNC5(ip);
	return error;
}