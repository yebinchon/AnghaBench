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
struct ocfs2_super {size_t max_slots; int /*<<< orphan*/  osb_lock; struct ocfs2_recovery_map* recovery_map; } ;
struct ocfs2_recovery_map {size_t rm_used; unsigned int* rm_entries; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct ocfs2_super*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ocfs2_super *osb,
				  unsigned int node_num)
{
	struct ocfs2_recovery_map *rm = osb->recovery_map;

	FUNC2(&osb->osb_lock);
	if (FUNC1(osb, node_num)) {
		FUNC3(&osb->osb_lock);
		return 1;
	}

	/* XXX: Can this be exploited? Not from o2dlm... */
	FUNC0(rm->rm_used >= osb->max_slots);

	rm->rm_entries[rm->rm_used] = node_num;
	rm->rm_used++;
	FUNC3(&osb->osb_lock);

	return 0;
}