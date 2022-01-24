#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ gh_gl; } ;
struct gfs2_trans {scalar_t__ tr_num_buf_new; scalar_t__ tr_num_databuf_new; scalar_t__ tr_num_buf_rm; scalar_t__ tr_num_databuf_rm; scalar_t__ tr_blocks; scalar_t__ tr_num_revoke; scalar_t__ tr_revokes; TYPE_2__ tr_t_gh; int /*<<< orphan*/  tr_reserved; int /*<<< orphan*/  tr_touched; } ;
struct gfs2_sbd {TYPE_1__* sd_vfs; } ;
typedef  scalar_t__ s64 ;
struct TYPE_7__ {struct gfs2_trans* journal_info; } ;
struct TYPE_5__ {int s_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int MS_SYNCHRONOUS ; 
 TYPE_4__* current ; 
 scalar_t__ FUNC1 (struct gfs2_sbd*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct gfs2_sbd*,struct gfs2_trans*) ; 
 int /*<<< orphan*/  FUNC5 (struct gfs2_sbd*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct gfs2_sbd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct gfs2_trans*) ; 
 int /*<<< orphan*/  FUNC8 (struct gfs2_trans*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

void FUNC10(struct gfs2_sbd *sdp)
{
	struct gfs2_trans *tr = current->journal_info;
	s64 nbuf;
	FUNC0(!tr);
	current->journal_info = NULL;

	if (!tr->tr_touched) {
		FUNC6(sdp, tr->tr_reserved);
		if (tr->tr_t_gh.gh_gl) {
			FUNC2(&tr->tr_t_gh);
			FUNC3(&tr->tr_t_gh);
			FUNC8(tr);
		}
		FUNC9(sdp->sd_vfs);
		return;
	}

	nbuf = tr->tr_num_buf_new + tr->tr_num_databuf_new;
	nbuf -= tr->tr_num_buf_rm;
	nbuf -= tr->tr_num_databuf_rm;

	if (FUNC1(sdp, (nbuf <= tr->tr_blocks) &&
				       (tr->tr_num_revoke <= tr->tr_revokes)))
		FUNC7(tr);

	FUNC4(sdp, tr);
	if (tr->tr_t_gh.gh_gl) {
		FUNC2(&tr->tr_t_gh);
		FUNC3(&tr->tr_t_gh);
		FUNC8(tr);
	}

	if (sdp->sd_vfs->s_flags & MS_SYNCHRONOUS)
		FUNC5(sdp, NULL);
	FUNC9(sdp->sd_vfs);
}