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
struct ocfs2_super {int max_slots; int slot_num; int /*<<< orphan*/  recovery_lock; int /*<<< orphan*/  recovery_event; int /*<<< orphan*/ * recovery_thread_task; int /*<<< orphan*/  journal; int /*<<< orphan*/  osb_lock; TYPE_1__* sb; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {int* rm_entries; scalar_t__ rm_used; } ;
struct ocfs2_quota_recovery {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  s_dev; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 int EROFS ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 scalar_t__ FUNC0 (struct ocfs2_quota_recovery*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ML_ERROR ; 
 int FUNC3 (struct ocfs2_quota_recovery*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 int* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct ocfs2_quota_recovery* FUNC14 (struct ocfs2_super*,int) ; 
 int FUNC15 (struct ocfs2_super*) ; 
 int FUNC16 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC17 (struct ocfs2_super*) ; 
 int FUNC18 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct ocfs2_quota_recovery*) ; 
 int /*<<< orphan*/  FUNC20 (struct ocfs2_super*) ; 
 int FUNC21 (struct ocfs2_super*,int,int) ; 
 int /*<<< orphan*/  FUNC22 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC23 (struct ocfs2_super*,int) ; 
 int FUNC24 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC25 (struct ocfs2_super*,int) ; 
 int FUNC26 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC30(void *arg)
{
	int status, node_num, slot_num;
	struct ocfs2_super *osb = arg;
	struct ocfs2_recovery_map *rm = osb->recovery_map;
	int *rm_quota = NULL;
	int rm_quota_used = 0, i;
	struct ocfs2_quota_recovery *qrec;

	FUNC9();

	status = FUNC26(osb);
	if (status < 0) {
		goto bail;
	}

	rm_quota = FUNC6(osb->max_slots * sizeof(int), GFP_NOFS);
	if (!rm_quota) {
		status = -ENOMEM;
		goto bail;
	}
restart:
	status = FUNC24(osb, 1);
	if (status < 0) {
		FUNC10(status);
		goto bail;
	}

	status = FUNC16(osb);
	if (status < 0)
		FUNC10(status);

	/* queue recovery for our own slot */
	FUNC19(osb->journal, osb->slot_num, NULL,
					NULL, NULL);

	FUNC27(&osb->osb_lock);
	while (rm->rm_used) {
		/* It's always safe to remove entry zero, as we won't
		 * clear it until ocfs2_recover_node() has succeeded. */
		node_num = rm->rm_entries[0];
		FUNC28(&osb->osb_lock);
		FUNC8(0, "checking node %d\n", node_num);
		slot_num = FUNC18(osb, node_num);
		if (slot_num == -ENOENT) {
			status = 0;
			FUNC8(0, "no slot for this node, so no recovery"
			     "required.\n");
			goto skip_recovery;
		}
		FUNC8(0, "node %d was using slot %d\n", node_num, slot_num);

		/* It is a bit subtle with quota recovery. We cannot do it
		 * immediately because we have to obtain cluster locks from
		 * quota files and we also don't want to just skip it because
		 * then quota usage would be out of sync until some node takes
		 * the slot. So we remember which nodes need quota recovery
		 * and when everything else is done, we recover quotas. */
		for (i = 0; i < rm_quota_used && rm_quota[i] != slot_num; i++);
		if (i == rm_quota_used)
			rm_quota[rm_quota_used++] = slot_num;

		status = FUNC21(osb, node_num, slot_num);
skip_recovery:
		if (!status) {
			FUNC23(osb, node_num);
		} else {
			FUNC8(ML_ERROR,
			     "Error %d recovering node %d on device (%u,%u)!\n",
			     status, node_num,
			     FUNC1(osb->sb->s_dev), FUNC2(osb->sb->s_dev));
			FUNC8(ML_ERROR, "Volume requires unmount.\n");
		}

		FUNC27(&osb->osb_lock);
	}
	FUNC28(&osb->osb_lock);
	FUNC8(0, "All nodes recovered\n");

	/* Refresh all journal recovery generations from disk */
	status = FUNC15(osb);
	status = (status == -EROFS) ? 0 : status;
	if (status < 0)
		FUNC10(status);

	/* Now it is right time to recover quotas... We have to do this under
	 * superblock lock so that noone can start using the slot (and crash)
	 * before we recover it */
	for (i = 0; i < rm_quota_used; i++) {
		qrec = FUNC14(osb, rm_quota[i]);
		if (FUNC0(qrec)) {
			status = FUNC3(qrec);
			FUNC10(status);
			continue;
		}
		FUNC19(osb->journal, rm_quota[i],
						NULL, NULL, qrec);
	}

	FUNC25(osb, 1);

	/* queue recovery for offline slots */
	FUNC20(osb);

bail:
	FUNC12(&osb->recovery_lock);
	if (!status && !FUNC22(osb)) {
		FUNC13(&osb->recovery_lock);
		goto restart;
	}

	FUNC17(osb);
	osb->recovery_thread_task = NULL;
	FUNC7(); /* sync with ocfs2_recovery_thread_running */
	FUNC29(&osb->recovery_event);

	FUNC13(&osb->recovery_lock);

	if (rm_quota)
		FUNC5(rm_quota);

	FUNC11(status);
	/* no one is callint kthread_stop() for us so the kthread() api
	 * requires that we call do_exit().  And it isn't exported, but
	 * complete_and_exit() seems to be a minimal wrapper around it. */
	FUNC4(NULL, status);
	return status;
}