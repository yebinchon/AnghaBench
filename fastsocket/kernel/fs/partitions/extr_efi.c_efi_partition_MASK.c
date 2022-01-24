#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int u64 ;
typedef  int u32 ;
struct parsed_partitions {int limit; TYPE_1__* parts; } ;
struct block_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  partition_type_guid; int /*<<< orphan*/  starting_lba; int /*<<< orphan*/  ending_lba; int /*<<< orphan*/  num_partition_entries; } ;
typedef  TYPE_2__ gpt_header ;
typedef  TYPE_2__ gpt_entry ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARTITION_LINUX_RAID_GUID ; 
 int FUNC0 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*,TYPE_2__**,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct block_device*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (struct parsed_partitions*,int,unsigned int,unsigned int) ; 

int
FUNC11(struct parsed_partitions *state, struct block_device *bdev)
{
	gpt_header *gpt = NULL;
	gpt_entry *ptes = NULL;
	u32 i;
	unsigned ssz = FUNC0(bdev) / 512;

	if (!FUNC2(bdev, &gpt, &ptes) || !gpt || !ptes) {
		FUNC4(gpt);
		FUNC4(ptes);
		return 0;
	}

	FUNC8("GUID Partition Table is valid!  Yea!\n");

	for (i = 0; i < FUNC6(gpt->num_partition_entries) && i < state->limit-1; i++) {
		u64 start = FUNC7(ptes[i].starting_lba);
		u64 size = FUNC7(ptes[i].ending_lba) -
			   FUNC7(ptes[i].starting_lba) + 1ULL;

		if (!FUNC3(&ptes[i], FUNC5(bdev)))
			continue;

		FUNC10(state, i+1, start * ssz, size * ssz);

		/* If this is a RAID volume, tell md */
		if (!FUNC1(ptes[i].partition_type_guid,
				 PARTITION_LINUX_RAID_GUID))
			state->parts[i+1].flags = 1;
	}
	FUNC4(ptes);
	FUNC4(gpt);
	FUNC9("\n");
	return 1;
}