#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct ocfs2_super {scalar_t__* slot_recovery_generations; TYPE_3__* sb; } ;
struct TYPE_6__ {int /*<<< orphan*/  ij_flags; } ;
struct TYPE_7__ {TYPE_1__ journal1; } ;
struct ocfs2_dinode {int /*<<< orphan*/  i_check; TYPE_2__ id1; int /*<<< orphan*/  i_clusters; } ;
struct inode {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef  int /*<<< orphan*/  journal_t ;
struct TYPE_9__ {void* ip_clusters; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EBUSY ; 
 int EIO ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int /*<<< orphan*/  ML_NOTICE ; 
 TYPE_5__* FUNC4 (struct inode*) ; 
 unsigned int OCFS2_JOURNAL_DIRTY_FL ; 
 int /*<<< orphan*/  OCFS2_META_LOCK_RECOVERY ; 
 int /*<<< orphan*/  REPLAY_NEEDED ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (struct inode*) ; 
 int FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct ocfs2_dinode*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC22 (struct inode*) ; 
 scalar_t__ FUNC23 (struct ocfs2_dinode*) ; 
 int FUNC24 (struct inode*,struct buffer_head**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*,int) ; 
 int FUNC26 (struct ocfs2_super*,int,struct buffer_head**,struct inode**) ; 
 int /*<<< orphan*/  FUNC27 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct ocfs2_super*,struct buffer_head*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC29(struct ocfs2_super *osb,
				int node_num,
				int slot_num)
{
	int status;
	int got_lock = 0;
	unsigned int flags;
	struct inode *inode = NULL;
	struct ocfs2_dinode *fe;
	journal_t *journal = NULL;
	struct buffer_head *bh = NULL;
	u32 slot_reco_gen;

	status = FUNC26(osb, slot_num, &bh, &inode);
	if (status) {
		FUNC17(status);
		goto done;
	}

	fe = (struct ocfs2_dinode *)bh->b_data;
	slot_reco_gen = FUNC23(fe);
	FUNC5(bh);
	bh = NULL;

	/*
	 * As the fs recovery is asynchronous, there is a small chance that
	 * another node mounted (and recovered) the slot before the recovery
	 * thread could get the lock. To handle that, we dirty read the journal
	 * inode for that slot to get the recovery generation. If it is
	 * different than what we expected, the slot has been recovered.
	 * If not, it needs recovery.
	 */
	if (osb->slot_recovery_generations[slot_num] != slot_reco_gen) {
		FUNC16(0, "Slot %u already recovered (old/new=%u/%u)\n", slot_num,
		     osb->slot_recovery_generations[slot_num], slot_reco_gen);
		osb->slot_recovery_generations[slot_num] = slot_reco_gen;
		status = -EBUSY;
		goto done;
	}

	/* Continue with recovery as the journal has not yet been recovered */

	status = FUNC24(inode, &bh, 1, OCFS2_META_LOCK_RECOVERY);
	if (status < 0) {
		FUNC16(0, "status returned from ocfs2_inode_lock=%d\n", status);
		if (status != -ERESTARTSYS)
			FUNC16(ML_ERROR, "Could not lock journal!\n");
		goto done;
	}
	got_lock = 1;

	fe = (struct ocfs2_dinode *) bh->b_data;

	flags = FUNC15(fe->id1.journal1.ij_flags);
	slot_reco_gen = FUNC23(fe);

	if (!(flags & OCFS2_JOURNAL_DIRTY_FL)) {
		FUNC16(0, "No recovery required for node %d\n", node_num);
		/* Refresh recovery generation for the slot */
		osb->slot_recovery_generations[slot_num] = slot_reco_gen;
		goto done;
	}

	/* we need to run complete recovery for offline orphan slots */
	FUNC27(osb, REPLAY_NEEDED);

	FUNC16(ML_NOTICE, "Recovering node %d from slot %d on device (%u,%u)\n",
	     node_num, slot_num,
	     FUNC2(osb->sb->s_dev), FUNC3(osb->sb->s_dev));

	FUNC4(inode)->ip_clusters = FUNC15(fe->i_clusters);

	status = FUNC22(inode);
	if (status < 0) {
		FUNC17(status);
		goto done;
	}

	FUNC16(0, "calling journal_init_inode\n");
	journal = FUNC11(inode);
	if (journal == NULL) {
		FUNC16(ML_ERROR, "Linux journal layer error\n");
		status = -EIO;
		goto done;
	}

	status = FUNC12(journal);
	if (status < 0) {
		FUNC17(status);
		if (!FUNC7(inode))
			FUNC0();
		FUNC9(journal);
		goto done;
	}

	FUNC20(osb->sb, journal, slot_num);

	/* wipe the journal */
	FUNC16(0, "flushing the journal.\n");
	FUNC13(journal);
	status = FUNC10(journal);
	FUNC14(journal);
	if (status < 0)
		FUNC17(status);

	/* This will mark the node clean */
	flags = FUNC15(fe->id1.journal1.ij_flags);
	flags &= ~OCFS2_JOURNAL_DIRTY_FL;
	fe->id1.journal1.ij_flags = FUNC6(flags);

	/* Increment recovery generation to indicate successful recovery */
	FUNC19(fe);
	osb->slot_recovery_generations[slot_num] =
					FUNC23(fe);

	FUNC21(osb->sb, bh->b_data, &fe->i_check);
	status = FUNC28(osb, bh, FUNC1(inode));
	if (status < 0)
		FUNC17(status);

	if (!FUNC7(inode))
		FUNC0();

	FUNC9(journal);

done:
	/* drop the lock on this nodes journal */
	if (got_lock)
		FUNC25(inode, 1);

	if (inode)
		FUNC8(inode);

	FUNC5(bh);

	FUNC18(status);
	return status;
}