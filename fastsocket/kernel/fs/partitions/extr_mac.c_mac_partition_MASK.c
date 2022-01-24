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
struct parsed_partitions {TYPE_1__* parts; } ;
struct mac_partition {scalar_t__ name; scalar_t__ type; scalar_t__ processor; int /*<<< orphan*/  status; int /*<<< orphan*/  block_count; int /*<<< orphan*/  start_block; int /*<<< orphan*/  signature; int /*<<< orphan*/  map_count; } ;
struct mac_driver_desc {int /*<<< orphan*/  block_size; int /*<<< orphan*/  signature; } ;
struct block_device {int /*<<< orphan*/  bd_dev; } ;
struct TYPE_2__ {int flags; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 int DISK_MAX_PARTS ; 
 unsigned int MAC_DRIVER_MAGIC ; 
 unsigned int MAC_PARTITION_MAGIC ; 
 unsigned int MAC_STATUS_BOOTABLE ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  powermac ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct parsed_partitions*,int,unsigned int,unsigned int) ; 
 unsigned char* FUNC8 (struct block_device*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (scalar_t__,char*) ; 
 scalar_t__ FUNC10 (scalar_t__,char*) ; 
 int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,char*,int) ; 

int FUNC13(struct parsed_partitions *state, struct block_device *bdev)
{
	Sector sect;
	unsigned char *data;
	int slot, blocks_in_map;
	unsigned secsize;
#ifdef CONFIG_PPC_PMAC
	int found_root = 0;
	int found_root_goodness = 0;
#endif
	struct mac_partition *part;
	struct mac_driver_desc *md;

	/* Get 0th block and look at the first partition map entry. */
	md = (struct mac_driver_desc *) FUNC8(bdev, 0, &sect);
	if (!md)
		return -1;
	if (FUNC0(md->signature) != MAC_DRIVER_MAGIC) {
		FUNC6(sect);
		return 0;
	}
	secsize = FUNC0(md->block_size);
	FUNC6(sect);
	data = FUNC8(bdev, secsize/512, &sect);
	if (!data)
		return -1;
	part = (struct mac_partition *) (data + secsize%512);
	if (FUNC0(part->signature) != MAC_PARTITION_MAGIC) {
		FUNC6(sect);
		return 0;		/* not a MacOS disk */
	}
	blocks_in_map = FUNC1(part->map_count);
	if (blocks_in_map < 0 || blocks_in_map >= DISK_MAX_PARTS) {
		FUNC6(sect);
		return 0;
	}
	FUNC5(" [mac]");
	for (slot = 1; slot <= blocks_in_map; ++slot) {
		int pos = slot * secsize;
		FUNC6(sect);
		data = FUNC8(bdev, pos/512, &sect);
		if (!data)
			return -1;
		part = (struct mac_partition *) (data + pos%512);
		if (FUNC0(part->signature) != MAC_PARTITION_MAGIC)
			break;
		FUNC7(state, slot,
			FUNC1(part->start_block) * (secsize/512),
			FUNC1(part->block_count) * (secsize/512));

		if (!FUNC12(part->type, "Linux_RAID", 10))
			state->parts[slot].flags = 1;
#ifdef CONFIG_PPC_PMAC
		/*
		 * If this is the first bootable partition, tell the
		 * setup code, in case it wants to make this the root.
		 */
		if (machine_is(powermac)) {
			int goodness = 0;

			mac_fix_string(part->processor, 16);
			mac_fix_string(part->name, 32);
			mac_fix_string(part->type, 32);					
		    
			if ((be32_to_cpu(part->status) & MAC_STATUS_BOOTABLE)
			    && strcasecmp(part->processor, "powerpc") == 0)
				goodness++;

			if (strcasecmp(part->type, "Apple_UNIX_SVR2") == 0
			    || (strnicmp(part->type, "Linux", 5) == 0
			        && strcasecmp(part->type, "Linux_swap") != 0)) {
				int i, l;

				goodness++;
				l = strlen(part->name);
				if (strcmp(part->name, "/") == 0)
					goodness++;
				for (i = 0; i <= l - 4; ++i) {
					if (strnicmp(part->name + i, "root",
						     4) == 0) {
						goodness += 2;
						break;
					}
				}
				if (strnicmp(part->name, "swap", 4) == 0)
					goodness--;
			}

			if (goodness > found_root_goodness) {
				found_root = slot;
				found_root_goodness = goodness;
			}
		}
#endif /* CONFIG_PPC_PMAC */
	}
#ifdef CONFIG_PPC_PMAC
	if (found_root_goodness)
		note_bootable_part(bdev->bd_dev, found_root, found_root_goodness);
#endif

	FUNC6(sect);
	FUNC5("\n");
	return 1;
}