#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct gfs2_sbd {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct gfs2_inode {int /*<<< orphan*/  i_rw_mutex; int /*<<< orphan*/  i_gl; int /*<<< orphan*/  i_diskflags; TYPE_1__ i_inode; int /*<<< orphan*/  i_no_addr; int /*<<< orphan*/  i_goal; scalar_t__ i_height; } ;
struct gfs2_dinode {int dummy; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  GFS2_DIF_TRUNC_IN_PROG ; 
 struct gfs2_sbd* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  RES_DINODE ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct gfs2_inode*,struct buffer_head**) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC8 (struct gfs2_sbd*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gfs2_sbd*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	struct buffer_head *dibh;
	int error;

	error = FUNC8(sdp, RES_DINODE, 0);
	if (error)
		return error;

	FUNC2(&ip->i_rw_mutex);

	error = FUNC5(ip, &dibh);
	if (error)
		goto out;

	if (!FUNC10(&ip->i_inode)) {
		ip->i_height = 0;
		ip->i_goal = ip->i_no_addr;
		FUNC3(dibh, sizeof(struct gfs2_dinode));
		FUNC6(ip);
	}
	ip->i_inode.i_mtime = ip->i_inode.i_ctime = CURRENT_TIME;
	ip->i_diskflags &= ~GFS2_DIF_TRUNC_IN_PROG;

	FUNC7(ip->i_gl, dibh);
	FUNC4(ip, dibh->b_data);
	FUNC1(dibh);

out:
	FUNC11(&ip->i_rw_mutex);
	FUNC9(sdp);
	return error;
}