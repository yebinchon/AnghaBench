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
struct ocfs2_global_disk_dqblk {int /*<<< orphan*/  dqb_use_count; int /*<<< orphan*/  dqb_itime; int /*<<< orphan*/  dqb_btime; int /*<<< orphan*/  dqb_curspace; int /*<<< orphan*/  dqb_bsoftlimit; int /*<<< orphan*/  dqb_bhardlimit; int /*<<< orphan*/  dqb_curinodes; int /*<<< orphan*/  dqb_isoftlimit; int /*<<< orphan*/  dqb_ihardlimit; } ;
struct mem_dqblk {void* dqb_itime; void* dqb_btime; void* dqb_curspace; void* dqb_bsoftlimit; void* dqb_bhardlimit; void* dqb_curinodes; void* dqb_isoftlimit; void* dqb_ihardlimit; } ;
struct dquot {int /*<<< orphan*/  dq_flags; struct mem_dqblk dq_dqb; } ;
struct TYPE_2__ {int /*<<< orphan*/  dq_use_count; } ;

/* Variables and functions */
 scalar_t__ DQ_LASTSET_B ; 
 TYPE_1__* FUNC0 (struct dquot*) ; 
 scalar_t__ QIF_BLIMITS_B ; 
 scalar_t__ QIF_BTIME_B ; 
 scalar_t__ QIF_ILIMITS_B ; 
 scalar_t__ QIF_INODES_B ; 
 scalar_t__ QIF_ITIME_B ; 
 scalar_t__ QIF_SPACE_B ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct dquot *dquot, void *dp)
{
	struct ocfs2_global_disk_dqblk *d = dp;
	struct mem_dqblk *m = &dquot->dq_dqb;

	/* Update from disk only entries not set by the admin */
	if (!FUNC3(DQ_LASTSET_B + QIF_ILIMITS_B, &dquot->dq_flags)) {
		m->dqb_ihardlimit = FUNC2(d->dqb_ihardlimit);
		m->dqb_isoftlimit = FUNC2(d->dqb_isoftlimit);
	}
	if (!FUNC3(DQ_LASTSET_B + QIF_INODES_B, &dquot->dq_flags))
		m->dqb_curinodes = FUNC2(d->dqb_curinodes);
	if (!FUNC3(DQ_LASTSET_B + QIF_BLIMITS_B, &dquot->dq_flags)) {
		m->dqb_bhardlimit = FUNC2(d->dqb_bhardlimit);
		m->dqb_bsoftlimit = FUNC2(d->dqb_bsoftlimit);
	}
	if (!FUNC3(DQ_LASTSET_B + QIF_SPACE_B, &dquot->dq_flags))
		m->dqb_curspace = FUNC2(d->dqb_curspace);
	if (!FUNC3(DQ_LASTSET_B + QIF_BTIME_B, &dquot->dq_flags))
		m->dqb_btime = FUNC2(d->dqb_btime);
	if (!FUNC3(DQ_LASTSET_B + QIF_ITIME_B, &dquot->dq_flags))
		m->dqb_itime = FUNC2(d->dqb_itime);
	FUNC0(dquot)->dq_use_count = FUNC1(d->dqb_use_count);
}