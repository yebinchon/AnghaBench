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
struct iattr {int dummy; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {int /*<<< orphan*/  i_gl; struct inode i_inode; } ;
struct gfs2_ea_location {int /*<<< orphan*/  el_bh; int /*<<< orphan*/  el_ea; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_EATYPE_SYS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFS2_POSIX_ACL_ACCESS ; 
 struct gfs2_sbd* FUNC3 (struct inode*) ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_EATTR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gfs2_inode*,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (struct gfs2_inode*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gfs2_ea_location*) ; 
 int FUNC7 (struct inode*,struct iattr*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct gfs2_sbd*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC12(struct gfs2_inode *ip, struct iattr *attr, char *data)
{
	struct inode *inode = &ip->i_inode;
	struct gfs2_sbd *sdp = FUNC3(inode);
	struct gfs2_ea_location el;
	int error;

	error = FUNC6(ip, GFS2_EATYPE_SYS, GFS2_POSIX_ACL_ACCESS, &el);
	if (error)
		return error;

	if (FUNC2(el.el_ea)) {
		error = FUNC9(sdp, RES_DINODE + RES_EATTR, 0);
		if (error == 0) {
			FUNC8(ip->i_gl, el.el_bh);
			FUNC11(FUNC0(el.el_ea), data,
			       FUNC1(el.el_ea));
		}
	} else {
		error = FUNC5(ip, el.el_ea, data);
	}

	FUNC4(el.el_bh);
	if (error)
		return error;

	error = FUNC7(inode, attr);
	FUNC10(sdp);
	return error;
}