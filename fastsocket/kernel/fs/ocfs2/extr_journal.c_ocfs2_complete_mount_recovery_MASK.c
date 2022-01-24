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
struct ocfs2_super {scalar_t__ dirty; int /*<<< orphan*/ * local_alloc_copy; int /*<<< orphan*/  slot_num; struct ocfs2_journal* journal; } ;
struct ocfs2_journal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  REPLAY_NEEDED ; 
 int /*<<< orphan*/  FUNC0 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_journal*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_super*) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ocfs2_super*,int /*<<< orphan*/ ) ; 

void FUNC5(struct ocfs2_super *osb)
{
	struct ocfs2_journal *journal = osb->journal;

	/* No need to queue up our truncate_log as regular cleanup will catch
	 * that */
	FUNC1(journal, osb->slot_num,
					osb->local_alloc_copy, NULL, NULL);
	FUNC4(osb, 0);

	osb->local_alloc_copy = NULL;
	osb->dirty = 0;

	/* queue to recover orphan slots for all offline slots */
	FUNC3(osb, REPLAY_NEEDED);
	FUNC2(osb);
	FUNC0(osb);
}