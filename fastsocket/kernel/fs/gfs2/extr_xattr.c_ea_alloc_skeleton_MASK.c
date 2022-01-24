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
struct TYPE_2__ {int /*<<< orphan*/  i_ctime; } ;
struct gfs2_inode {TYPE_1__ i_inode; int /*<<< orphan*/  i_gl; } ;
struct gfs2_ea_request {int dummy; } ;
struct gfs2_alloc_parms {unsigned int target; } ;
struct buffer_head {int /*<<< orphan*/  b_data; } ;
typedef  int (* ea_skeleton_call_t ) (struct gfs2_inode*,struct gfs2_ea_request*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ RES_DINODE ; 
 scalar_t__ RES_QUOTA ; 
 scalar_t__ RES_STATFS ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (struct gfs2_inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct gfs2_inode*) ; 
 int FUNC4 (struct gfs2_inode*,struct gfs2_alloc_parms*) ; 
 int FUNC5 (struct gfs2_inode*,struct buffer_head**) ; 
 int FUNC6 (struct gfs2_inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_inode*) ; 
 scalar_t__ FUNC8 (struct gfs2_inode*,unsigned int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct buffer_head*) ; 
 int FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct gfs2_inode *ip, struct gfs2_ea_request *er,
			     unsigned int blks,
			     ea_skeleton_call_t skeleton_call, void *private)
{
	struct gfs2_alloc_parms ap = { .target = blks };
	struct buffer_head *dibh;
	int error;

	error = FUNC9(FUNC0(&ip->i_inode));
	if (error)
		return error;

	error = FUNC6(ip);
	if (error)
		return error;

	error = FUNC4(ip, &ap);
	if (error)
		goto out_gunlock_q;

	error = FUNC11(FUNC0(&ip->i_inode),
				 blks + FUNC8(ip, blks) +
				 RES_DINODE + RES_STATFS + RES_QUOTA, 0);
	if (error)
		goto out_ipres;

	error = skeleton_call(ip, er, private);
	if (error)
		goto out_end_trans;

	error = FUNC5(ip, &dibh);
	if (!error) {
		ip->i_inode.i_ctime = CURRENT_TIME;
		FUNC10(ip->i_gl, dibh);
		FUNC2(ip, dibh->b_data);
		FUNC1(dibh);
	}

out_end_trans:
	FUNC12(FUNC0(&ip->i_inode));
out_ipres:
	FUNC3(ip);
out_gunlock_q:
	FUNC7(ip);
	return error;
}