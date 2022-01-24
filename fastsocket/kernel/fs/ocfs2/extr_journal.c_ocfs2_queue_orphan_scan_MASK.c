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
typedef  scalar_t__ u32 ;
struct ocfs2_orphan_scan {scalar_t__ os_seqno; int /*<<< orphan*/  os_scantime; int /*<<< orphan*/  os_count; int /*<<< orphan*/  os_state; } ;
struct ocfs2_super {int max_slots; int /*<<< orphan*/  journal; struct ocfs2_orphan_scan osb_orphan_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  CURRENT_TIME ; 
 int EAGAIN ; 
 scalar_t__ ORPHAN_SCAN_INACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct ocfs2_super*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC5(struct ocfs2_super *osb)
{
	struct ocfs2_orphan_scan *os;
	int status, i;
	u32 seqno = 0;

	os = &osb->osb_orphan_scan;

	if (FUNC0(&os->os_state) == ORPHAN_SCAN_INACTIVE)
		goto out;

	status = FUNC2(osb, &seqno);
	if (status < 0) {
		if (status != -EAGAIN)
			FUNC1(status);
		goto out;
	}

	/* Do no queue the tasks if the volume is being umounted */
	if (FUNC0(&os->os_state) == ORPHAN_SCAN_INACTIVE)
		goto unlock;

	if (os->os_seqno != seqno) {
		os->os_seqno = seqno;
		goto unlock;
	}

	for (i = 0; i < osb->max_slots; i++)
		FUNC4(osb->journal, i, NULL, NULL,
						NULL);
	/*
	 * We queued a recovery on orphan slots, increment the sequence
	 * number and update LVB so other node will skip the scan for a while
	 */
	seqno++;
	os->os_count++;
	os->os_scantime = CURRENT_TIME;
unlock:
	FUNC3(osb, seqno);
out:
	return;
}