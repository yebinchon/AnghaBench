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
typedef  int u64 ;
struct o2hb_region {int /*<<< orphan*/  hr_block_bytes; struct o2hb_disk_slot* hr_slots; } ;
struct o2hb_disk_slot {scalar_t__ ds_raw_block; } ;
struct o2hb_disk_heartbeat_block {int hb_node; void* hb_cksum; void* hb_dead_ms; void* hb_generation; void* hb_seq; } ;
struct TYPE_2__ {int tv_sec; } ;

/* Variables and functions */
 TYPE_1__ CURRENT_TIME ; 
 int /*<<< orphan*/  ML_HB_BIO ; 
 int O2HB_REGION_TIMEOUT_MS ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (struct o2hb_disk_heartbeat_block*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long long,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct o2hb_region*,struct o2hb_disk_heartbeat_block*) ; 
 int o2hb_dead_threshold ; 
 int FUNC6 () ; 

__attribute__((used)) static inline void FUNC7(struct o2hb_region *reg,
				      u64 generation)
{
	int node_num;
	u64 cputime;
	struct o2hb_disk_slot *slot;
	struct o2hb_disk_heartbeat_block *hb_block;

	node_num = FUNC6();
	slot = &reg->hr_slots[node_num];

	hb_block = (struct o2hb_disk_heartbeat_block *)slot->ds_raw_block;
	FUNC3(hb_block, 0, reg->hr_block_bytes);
	/* TODO: time stuff */
	cputime = CURRENT_TIME.tv_sec;
	if (!cputime)
		cputime = 1;

	hb_block->hb_seq = FUNC1(cputime);
	hb_block->hb_node = node_num;
	hb_block->hb_generation = FUNC1(generation);
	hb_block->hb_dead_ms = FUNC0(o2hb_dead_threshold * O2HB_REGION_TIMEOUT_MS);

	/* This step must always happen last! */
	hb_block->hb_cksum = FUNC0(FUNC5(reg,
								   hb_block));

	FUNC4(ML_HB_BIO, "our node generation = 0x%llx, cksum = 0x%x\n",
	     (long long)generation,
	     FUNC2(hb_block->hb_cksum));
}