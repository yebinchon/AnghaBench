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
struct gfs2_sbd {int dummy; } ;
struct gfs2_inode {TYPE_1__* i_res; int /*<<< orphan*/  i_flags; int /*<<< orphan*/  i_inode; } ;
struct TYPE_2__ {unsigned int rs_qa_qd_num; int /*<<< orphan*/ ** rs_qa_qd; } ;

/* Variables and functions */
 struct gfs2_sbd* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GIF_QD_LOCKED ; 
 int /*<<< orphan*/  FUNC1 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC4(struct gfs2_inode *ip)
{
	struct gfs2_sbd *sdp = FUNC0(&ip->i_inode);
	unsigned int x;

	if (ip->i_res == NULL)
		return;
	FUNC1(sdp, !FUNC3(GIF_QD_LOCKED, &ip->i_flags));

	for (x = 0; x < ip->i_res->rs_qa_qd_num; x++) {
		FUNC2(ip->i_res->rs_qa_qd[x]);
		ip->i_res->rs_qa_qd[x] = NULL;
	}
	ip->i_res->rs_qa_qd_num = 0;
}