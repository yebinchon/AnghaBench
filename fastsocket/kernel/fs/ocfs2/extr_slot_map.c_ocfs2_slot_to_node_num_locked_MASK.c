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
struct ocfs2_super {int max_slots; int /*<<< orphan*/  osb_lock; struct ocfs2_slot_info* slot_info; } ;
struct ocfs2_slot_info {TYPE_1__* si_slots; } ;
struct TYPE_2__ {unsigned int sl_node_num; int /*<<< orphan*/  sl_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

int FUNC2(struct ocfs2_super *osb, int slot_num,
				  unsigned int *node_num)
{
	struct ocfs2_slot_info *si = osb->slot_info;

	FUNC1(&osb->osb_lock);

	FUNC0(slot_num < 0);
	FUNC0(slot_num > osb->max_slots);

	if (!si->si_slots[slot_num].sl_valid)
		return -ENOENT;

	*node_num = si->si_slots[slot_num].sl_node_num;
	return 0;
}