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
struct super_block {int dummy; } ;
struct ocfs2_super {int dummy; } ;
struct ocfs2_mem_dqinfo {int dummy; } ;
struct dquot {int dq_type; unsigned long dq_flags; int /*<<< orphan*/  dq_id; struct super_block* dq_sb; } ;
typedef  int /*<<< orphan*/  handle_t ;
struct TYPE_2__ {struct ocfs2_mem_dqinfo* dqi_priv; } ;

/* Variables and functions */
 int DQ_LASTSET_B ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCFS2_QSYNC_CREDITS ; 
 struct ocfs2_super* FUNC1 (struct super_block*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int QIF_BLIMITS_B ; 
 int QIF_BTIME_B ; 
 int QIF_ILIMITS_B ; 
 int QIF_INODES_B ; 
 int QIF_ITIME_B ; 
 int QIF_SPACE_B ; 
 int /*<<< orphan*/  dq_data_lock ; 
 int FUNC3 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC4 (struct dquot*) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct ocfs2_mem_dqinfo*,int) ; 
 int /*<<< orphan*/ * FUNC11 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct dquot*) ; 
 int /*<<< orphan*/  FUNC13 (struct ocfs2_mem_dqinfo*,int) ; 
 int FUNC14 (struct dquot*) ; 
 TYPE_1__* FUNC15 (struct super_block*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct dquot *dquot)
{
	unsigned long mask = (1 << (DQ_LASTSET_B + QIF_ILIMITS_B)) |
			     (1 << (DQ_LASTSET_B + QIF_BLIMITS_B)) |
			     (1 << (DQ_LASTSET_B + QIF_INODES_B)) |
			     (1 << (DQ_LASTSET_B + QIF_SPACE_B)) |
			     (1 << (DQ_LASTSET_B + QIF_BTIME_B)) |
			     (1 << (DQ_LASTSET_B + QIF_ITIME_B));
	int sync = 0;
	int status;
	struct super_block *sb = dquot->dq_sb;
	int type = dquot->dq_type;
	struct ocfs2_mem_dqinfo *oinfo = FUNC15(sb, type)->dqi_priv;
	handle_t *handle;
	struct ocfs2_super *osb = FUNC1(sb);

	FUNC6("id=%u, type=%d", dquot->dq_id, type);
	FUNC4(dquot);

	/* In case user set some limits, sync dquot immediately to global
	 * quota file so that information propagates quicker */
	FUNC16(&dq_data_lock);
	if (dquot->dq_flags & mask)
		sync = 1;
	FUNC17(&dq_data_lock);
	/* This is a slight hack but we can't afford getting global quota
	 * lock if we already have a transaction started. */
	if (!sync || FUNC5()) {
		status = FUNC14(dquot);
		goto out;
	}
	status = FUNC10(oinfo, 1);
	if (status < 0)
		goto out;
	handle = FUNC11(osb, OCFS2_QSYNC_CREDITS);
	if (FUNC0(handle)) {
		status = FUNC2(handle);
		FUNC7(status);
		goto out_ilock;
	}
	status = FUNC12(dquot);
	if (status < 0) {
		FUNC7(status);
		goto out_trans;
	}
	/* Now write updated local dquot structure */
	status = FUNC3(dquot);
out_trans:
	FUNC9(osb, handle);
out_ilock:
	FUNC13(oinfo, 1);
out:
	FUNC8(status);
	return status;
}