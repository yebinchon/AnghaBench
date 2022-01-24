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
struct o2hb_region {int hr_blocks; struct o2hb_disk_slot* hr_slots; } ;
struct o2hb_disk_slot {void* ds_last_generation; void* ds_last_time; scalar_t__ ds_raw_block; } ;
struct o2hb_disk_heartbeat_block {int /*<<< orphan*/  hb_generation; int /*<<< orphan*/  hb_seq; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct o2hb_region*,int) ; 

__attribute__((used)) static int FUNC5(struct o2hb_region *reg)
{
	int ret, i;
	struct o2hb_disk_slot *slot;
	struct o2hb_disk_heartbeat_block *hb_block;

	FUNC1();

	ret = FUNC4(reg, reg->hr_blocks);
	if (ret) {
		FUNC2(ret);
		goto out;
	}

	/* We only want to get an idea of the values initially in each
	 * slot, so we do no verification - o2hb_check_slot will
	 * actually determine if each configured slot is valid and
	 * whether any values have changed. */
	for(i = 0; i < reg->hr_blocks; i++) {
		slot = &reg->hr_slots[i];
		hb_block = (struct o2hb_disk_heartbeat_block *) slot->ds_raw_block;

		/* Only fill the values that o2hb_check_slot uses to
		 * determine changing slots */
		slot->ds_last_time = FUNC0(hb_block->hb_seq);
		slot->ds_last_generation = FUNC0(hb_block->hb_generation);
	}

out:
	FUNC3(ret);
	return ret;
}