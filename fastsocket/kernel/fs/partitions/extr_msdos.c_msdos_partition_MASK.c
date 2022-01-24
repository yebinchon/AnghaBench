#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct partition {int boot_ind; } ;
struct parsed_partitions {int next; TYPE_1__* parts; } ;
struct fat_boot_sector {int /*<<< orphan*/  media; scalar_t__ fats; scalar_t__ reserved; } ;
struct block_device {int dummy; } ;
typedef  int sector_t ;
struct TYPE_4__ {unsigned char id; int /*<<< orphan*/  (* parse ) (struct parsed_partitions*,struct block_device*,int,int,int) ;} ;
struct TYPE_3__ {int flags; } ;
typedef  int /*<<< orphan*/  Sector ;

/* Variables and functions */
 unsigned char DM6_PARTITION ; 
 unsigned char EFI_PMBR_OSTYPE_EFI_GPT ; 
 unsigned char EZD_PARTITION ; 
 unsigned char LINUX_RAID_PARTITION ; 
 unsigned char FUNC0 (struct partition*) ; 
 scalar_t__ FUNC1 (unsigned char*,struct block_device*) ; 
 int FUNC2 (struct block_device*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct partition*) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 int FUNC8 (struct partition*) ; 
 int /*<<< orphan*/  FUNC9 (struct parsed_partitions*,struct block_device*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct parsed_partitions*,int,int,int) ; 
 unsigned char* FUNC13 (struct block_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (struct partition*) ; 
 int /*<<< orphan*/  FUNC15 (struct parsed_partitions*,struct block_device*,int,int,int) ; 
 TYPE_2__* subtypes ; 

int FUNC16(struct parsed_partitions *state, struct block_device *bdev)
{
	sector_t sector_size = FUNC2(bdev) / 512;
	Sector sect;
	unsigned char *data;
	struct partition *p;
	struct fat_boot_sector *fb;
	int slot;

	data = FUNC13(bdev, 0, &sect);
	if (!data)
		return -1;
	if (!FUNC7(data + 510)) {
		FUNC11(sect);
		return 0;
	}

	if (FUNC1(data, bdev)) {
		FUNC11(sect);
		FUNC10( " [AIX]");
		return 0;
	}

	/*
	 * Now that the 55aa signature is present, this is probably
	 * either the boot sector of a FAT filesystem or a DOS-type
	 * partition table. Reject this in case the boot indicator
	 * is not 0 or 0x80.
	 */
	p = (struct partition *) (data + 0x1be);
	for (slot = 1; slot <= 4; slot++, p++) {
		if (p->boot_ind != 0 && p->boot_ind != 0x80) {
			/*
			 * Even without a valid boot inidicator value
			 * its still possible this is valid FAT filesystem
			 * without a partition table.
			 */
			fb = (struct fat_boot_sector *) data;
			if (slot == 1 && fb->reserved && fb->fats
				&& FUNC3(fb->media)) {
				FUNC10("\n");
				FUNC11(sect);
				return 1;
			} else {
				FUNC11(sect);
				return 0;
			}
		}
	}

#ifdef CONFIG_EFI_PARTITION
	p = (struct partition *) (data + 0x1be);
	for (slot = 1 ; slot <= 4 ; slot++, p++) {
		/* If this is an EFI GPT disk, msdos should ignore it. */
		if (SYS_IND(p) == EFI_PMBR_OSTYPE_EFI_GPT) {
			put_dev_sector(sect);
			return 0;
		}
	}
#endif
	p = (struct partition *) (data + 0x1be);

	/*
	 * Look for partitions in two passes:
	 * First find the primary and DOS-type extended partitions.
	 * On the second pass look inside *BSD, Unixware and Solaris partitions.
	 */

	state->next = 5;
	for (slot = 1 ; slot <= 4 ; slot++, p++) {
		sector_t start = FUNC14(p)*sector_size;
		sector_t size = FUNC8(p)*sector_size;
		if (!size)
			continue;
		if (FUNC4(p)) {
			/*
			 * prevent someone doing mkfs or mkswap on an
			 * extended partition, but leave room for LILO
			 * FIXME: this uses one logical sector for > 512b
			 * sector, although it may not be enough/proper.
			 */
			sector_t n = 2;
			n = FUNC6(size, FUNC5(sector_size, n));
			FUNC12(state, slot, start, n);

			FUNC10(" <");
			FUNC9(state, bdev, start, size);
			FUNC10(" >");
			continue;
		}
		FUNC12(state, slot, start, size);
		if (FUNC0(p) == LINUX_RAID_PARTITION)
			state->parts[slot].flags = 1;
		if (FUNC0(p) == DM6_PARTITION)
			FUNC10("[DM]");
		if (FUNC0(p) == EZD_PARTITION)
			FUNC10("[EZD]");
	}

	FUNC10("\n");

	/* second pass - output for each on a separate line */
	p = (struct partition *) (0x1be + data);
	for (slot = 1 ; slot <= 4 ; slot++, p++) {
		unsigned char id = FUNC0(p);
		int n;

		if (!FUNC8(p))
			continue;

		for (n = 0; subtypes[n].parse && id != subtypes[n].id; n++)
			;

		if (!subtypes[n].parse)
			continue;
		subtypes[n].parse(state, bdev, FUNC14(p)*sector_size,
						FUNC8(p)*sector_size, slot);
	}
	FUNC11(sect);
	return 1;
}