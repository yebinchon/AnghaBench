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
struct gfs2_trans {int tr_touched; int /*<<< orphan*/  tr_num_revoke; } ;
struct gfs2_sbd {int /*<<< orphan*/  sd_log_le_revoke; int /*<<< orphan*/  sd_log_num_revoke; } ;
struct gfs2_glock {int /*<<< orphan*/  gl_flags; int /*<<< orphan*/  gl_revokes; } ;
struct gfs2_bufdata {int /*<<< orphan*/  bd_list; int /*<<< orphan*/ * bd_ops; int /*<<< orphan*/  bd_ail_gl_list; int /*<<< orphan*/  bd_ail_st_list; struct gfs2_glock* bd_gl; } ;
struct TYPE_2__ {struct gfs2_trans* journal_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  GLF_LFLUSH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  gfs2_revoke_lops ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC5(struct gfs2_sbd *sdp, struct gfs2_bufdata *bd)
{
	struct gfs2_glock *gl = bd->bd_gl;
	struct gfs2_trans *tr = current->journal_info;

	FUNC0(!FUNC3(&bd->bd_list));
	FUNC0(!FUNC3(&bd->bd_ail_st_list));
	FUNC0(!FUNC3(&bd->bd_ail_gl_list));
	bd->bd_ops = &gfs2_revoke_lops;
	tr->tr_touched = 1;
	tr->tr_num_revoke++;
	sdp->sd_log_num_revoke++;
	FUNC1(&gl->gl_revokes);
	FUNC4(GLF_LFLUSH, &gl->gl_flags);
	FUNC2(&bd->bd_list, &sdp->sd_log_le_revoke);
}