#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
typedef  int u32 ;
struct block_device {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  partition_entry_array_crc32; int /*<<< orphan*/  sizeof_partition_entry; int /*<<< orphan*/  num_partition_entries; int /*<<< orphan*/  last_usable_lba; int /*<<< orphan*/  first_usable_lba; int /*<<< orphan*/  my_lba; int /*<<< orphan*/  header_crc32; int /*<<< orphan*/  header_size; int /*<<< orphan*/  signature; } ;
typedef  TYPE_1__ gpt_header ;
typedef  TYPE_1__ gpt_entry ;

/* Variables and functions */
 scalar_t__ GPT_HEADER_SIGNATURE ; 
 TYPE_1__* FUNC0 (struct block_device*,TYPE_1__*) ; 
 TYPE_1__* FUNC1 (struct block_device*,scalar_t__) ; 
 int FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (struct block_device*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

__attribute__((used)) static int
FUNC10(struct block_device *bdev, u64 lba,
	     gpt_header **gpt, gpt_entry **ptes)
{
	u32 crc, origcrc;
	u64 lastlba;

	if (!bdev || !gpt || !ptes)
		return 0;
	if (!(*gpt = FUNC1(bdev, lba)))
		return 0;

	/* Check the GUID Partition Table signature */
	if (FUNC8((*gpt)->signature) != GPT_HEADER_SIGNATURE) {
		FUNC9("GUID Partition Table Header signature is wrong:"
			 "%lld != %lld\n",
			 (unsigned long long)FUNC8((*gpt)->signature),
			 (unsigned long long)GPT_HEADER_SIGNATURE);
		goto fail;
	}

	/* Check the GUID Partition Table header size */
	if (FUNC7((*gpt)->header_size) >
			FUNC2(bdev)) {
		FUNC9("GUID Partition Table Header size is wrong: %u > %u\n",
			FUNC7((*gpt)->header_size),
			FUNC2(bdev));
		goto fail;
	}

	/* Check the GUID Partition Table CRC */
	origcrc = FUNC7((*gpt)->header_crc32);
	(*gpt)->header_crc32 = 0;
	crc = FUNC4((const unsigned char *) (*gpt), FUNC7((*gpt)->header_size));

	if (crc != origcrc) {
		FUNC9("GUID Partition Table Header CRC is wrong: %x != %x\n",
			 crc, origcrc);
		goto fail;
	}
	(*gpt)->header_crc32 = FUNC3(origcrc);

	/* Check that the my_lba entry points to the LBA that contains
	 * the GUID Partition Table */
	if (FUNC8((*gpt)->my_lba) != lba) {
		FUNC9("GPT my_lba incorrect: %lld != %lld\n",
			 (unsigned long long)FUNC8((*gpt)->my_lba),
			 (unsigned long long)lba);
		goto fail;
	}

	/* Check the first_usable_lba and last_usable_lba are
	 * within the disk.
	 */
	lastlba = FUNC6(bdev);
	if (FUNC8((*gpt)->first_usable_lba) > lastlba) {
		FUNC9("GPT: first_usable_lba incorrect: %lld > %lld\n",
			 (unsigned long long)FUNC8((*gpt)->first_usable_lba),
			 (unsigned long long)lastlba);
		goto fail;
	}
	if (FUNC8((*gpt)->last_usable_lba) > lastlba) {
		FUNC9("GPT: last_usable_lba incorrect: %lld > %lld\n",
			 (unsigned long long)FUNC8((*gpt)->last_usable_lba),
			 (unsigned long long)lastlba);
		goto fail;
	}

	/* Check that sizeof_partition_entry has the correct value */
	if (FUNC7((*gpt)->sizeof_partition_entry) != sizeof(gpt_entry)) {
			FUNC9("GUID Partitition Entry Size check failed.\n");
			goto fail;
	}

	if (!(*ptes = FUNC0(bdev, *gpt)))
		goto fail;

	/* Check the GUID Partition Entry Array CRC */
	crc = FUNC4((const unsigned char *) (*ptes),
			FUNC7((*gpt)->num_partition_entries) *
			FUNC7((*gpt)->sizeof_partition_entry));

	if (crc != FUNC7((*gpt)->partition_entry_array_crc32)) {
		FUNC9("GUID Partitition Entry Array CRC check failed.\n");
		goto fail_ptes;
	}

	/* We're done, all's well */
	return 1;

 fail_ptes:
	FUNC5(*ptes);
	*ptes = NULL;
 fail:
	FUNC5(*gpt);
	*gpt = NULL;
	return 0;
}