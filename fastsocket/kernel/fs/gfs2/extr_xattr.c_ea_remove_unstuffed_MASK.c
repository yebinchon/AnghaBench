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
struct gfs2_inode {int /*<<< orphan*/  i_inode; } ;
struct gfs2_ea_header {int dummy; } ;
struct buffer_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NO_QUOTA_CHANGE ; 
 int FUNC1 (struct gfs2_inode*,struct buffer_head*,struct gfs2_ea_header*,struct gfs2_ea_header*,int*) ; 
 int FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct gfs2_inode *ip, struct buffer_head *bh,
			       struct gfs2_ea_header *ea,
			       struct gfs2_ea_header *prev, int leave)
{
	int error;

	error = FUNC4(FUNC0(&ip->i_inode));
	if (error)
		return error;

	error = FUNC2(ip, NO_QUOTA_CHANGE, NO_QUOTA_CHANGE);
	if (error)
		goto out_alloc;

	error = FUNC1(ip, bh, ea, prev, (leave) ? &error : NULL);

	FUNC3(ip);
out_alloc:
	return error;
}