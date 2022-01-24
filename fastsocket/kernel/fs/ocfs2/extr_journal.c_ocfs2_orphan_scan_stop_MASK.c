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
struct ocfs2_orphan_scan {int /*<<< orphan*/  os_lock; int /*<<< orphan*/  os_orphan_scan_work; int /*<<< orphan*/  os_state; } ;
struct ocfs2_super {struct ocfs2_orphan_scan osb_orphan_scan; } ;

/* Variables and functions */
 scalar_t__ ORPHAN_SCAN_ACTIVE ; 
 int /*<<< orphan*/  ORPHAN_SCAN_INACTIVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct ocfs2_super *osb)
{
	struct ocfs2_orphan_scan *os;

	os = &osb->osb_orphan_scan;
	if (FUNC0(&os->os_state) == ORPHAN_SCAN_ACTIVE) {
		FUNC1(&os->os_state, ORPHAN_SCAN_INACTIVE);
		FUNC3(&os->os_lock);
		FUNC2(&os->os_orphan_scan_work);
		FUNC4(&os->os_lock);
	}
}