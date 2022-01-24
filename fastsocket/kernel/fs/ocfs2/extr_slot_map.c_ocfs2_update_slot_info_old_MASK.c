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
typedef  scalar_t__ u16 ;
struct ocfs2_slot_map {int /*<<< orphan*/ * sm_slots; } ;
struct ocfs2_slot_info {int si_num_slots; TYPE_1__** si_bh; } ;
struct TYPE_2__ {scalar_t__ b_data; } ;

/* Variables and functions */
 scalar_t__ OCFS2_INVALID_SLOT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_slot_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ocfs2_slot_info*,int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_slot_info *si)
{
	int i;
	struct ocfs2_slot_map *sm;

	sm = (struct ocfs2_slot_map *)si->si_bh[0]->b_data;

	for (i = 0; i < si->si_num_slots; i++) {
		if (FUNC0(sm->sm_slots[i]) == (u16)OCFS2_INVALID_SLOT)
			FUNC1(si, i);
		else
			FUNC2(si, i, FUNC0(sm->sm_slots[i]));
	}
}