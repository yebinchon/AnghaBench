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
struct qstr {int dummy; } ;
struct gfs2_inode {int i_entries; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct gfs2_inode*,int) ; 
 scalar_t__ FUNC1 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*) ; 
 int FUNC3 (struct gfs2_inode*,struct qstr const*) ; 
 struct qstr const gfs2_qdot ; 
 struct qstr const gfs2_qdotdot ; 

__attribute__((used)) static int FUNC4(struct gfs2_inode *dip, const struct qstr *name,
		       struct gfs2_inode *ip)
{
	int error;

	if (ip->i_entries != 2) {
		if (FUNC1(ip))
			FUNC2(ip);
		return -EIO;
	}

	error = FUNC3(dip, name);
	if (error)
		return error;

	error = FUNC0(dip, -1);
	if (error)
		return error;

	error = FUNC3(ip, &gfs2_qdot);
	if (error)
		return error;

	error = FUNC3(ip, &gfs2_qdotdot);
	if (error)
		return error;

	/* It looks odd, but it really should be done twice */
	error = FUNC0(ip, -1);
	if (error)
		return error;

	error = FUNC0(ip, -1);
	if (error)
		return error;

	return error;
}