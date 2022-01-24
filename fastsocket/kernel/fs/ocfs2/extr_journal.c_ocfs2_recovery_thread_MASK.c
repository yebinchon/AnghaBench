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
struct ocfs2_super {int /*<<< orphan*/  recovery_event; int /*<<< orphan*/  recovery_lock; int /*<<< orphan*/ * recovery_thread_task; scalar_t__ disable_recovery; int /*<<< orphan*/  node_num; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __ocfs2_recovery_thread ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,struct ocfs2_super*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct ocfs2_super*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(struct ocfs2_super *osb, int node_num)
{
	FUNC4("(node_num=%d, osb->node_num = %d)\n",
		   node_num, osb->node_num);

	FUNC7(&osb->recovery_lock);
	if (osb->disable_recovery)
		goto out;

	/* People waiting on recovery will wait on
	 * the recovery map to empty. */
	if (FUNC9(osb, node_num))
		FUNC3(0, "node %d already in recovery map.\n", node_num);

	FUNC3(0, "starting recovery thread...\n");

	if (osb->recovery_thread_task)
		goto out;

	osb->recovery_thread_task =  FUNC2(__ocfs2_recovery_thread, osb,
						 "ocfs2rec");
	if (FUNC0(osb->recovery_thread_task)) {
		FUNC5((int)FUNC1(osb->recovery_thread_task));
		osb->recovery_thread_task = NULL;
	}

out:
	FUNC8(&osb->recovery_lock);
	FUNC10(&osb->recovery_event);

	FUNC6();
}