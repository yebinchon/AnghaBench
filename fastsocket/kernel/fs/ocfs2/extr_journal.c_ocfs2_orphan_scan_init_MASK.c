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
struct ocfs2_orphan_scan {int /*<<< orphan*/  os_orphan_scan_work; int /*<<< orphan*/  os_lock; scalar_t__ os_seqno; scalar_t__ os_count; struct ocfs2_super* os_osb; } ;
struct ocfs2_super {struct ocfs2_orphan_scan osb_orphan_scan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_orphan_scan_work ; 

void FUNC2(struct ocfs2_super *osb)
{
	struct ocfs2_orphan_scan *os;

	os = &osb->osb_orphan_scan;
	os->os_osb = osb;
	os->os_count = 0;
	os->os_seqno = 0;
	FUNC1(&os->os_lock);
	FUNC0(&os->os_orphan_scan_work, ocfs2_orphan_scan_work);
}