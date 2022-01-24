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
struct TYPE_4__ {int max_unmap_block_desc_count; int unmap_granularity; int max_write_same_len; int is_nonrot; int /*<<< orphan*/  unmap_granularity_alignment; int /*<<< orphan*/  max_unmap_lba_count; int /*<<< orphan*/  hw_queue_depth; int /*<<< orphan*/  hw_max_sectors; int /*<<< orphan*/  hw_block_size; } ;
struct se_device {TYPE_2__ dev_attrib; } ;
struct TYPE_3__ {int discard_granularity; int /*<<< orphan*/  discard_alignment; int /*<<< orphan*/  max_discard_sectors; } ;
struct request_queue {TYPE_1__ limits; int /*<<< orphan*/  nr_requests; } ;
struct iblock_dev {int ibd_flags; int /*<<< orphan*/ * ibd_bio_set; struct block_device* ibd_bd; int /*<<< orphan*/  ibd_udev_path; int /*<<< orphan*/  ibd_readonly; } ;
struct block_device {int dummy; } ;
typedef  int fmode_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int FMODE_EXCL ; 
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int IBDF_HAS_UDEV_PATH ; 
 int /*<<< orphan*/  IBLOCK_BIO_POOL_SIZE ; 
 struct iblock_dev* FUNC0 (struct se_device*) ; 
 scalar_t__ FUNC1 (struct block_device*) ; 
 int FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  UINT_MAX ; 
 struct request_queue* FUNC3 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct block_device*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct request_queue*) ; 
 scalar_t__ FUNC8 (struct request_queue*) ; 
 struct block_device* FUNC9 (int /*<<< orphan*/ ,int,struct iblock_dev*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int FUNC12(struct se_device *dev)
{
	struct iblock_dev *ib_dev = FUNC0(dev);
	struct request_queue *q;
	struct block_device *bd = NULL;
	fmode_t mode;
	int ret = -ENOMEM;

	if (!(ib_dev->ibd_flags & IBDF_HAS_UDEV_PATH)) {
		FUNC11("Missing udev_path= parameters for IBLOCK\n");
		return -EINVAL;
	}

	ib_dev->ibd_bio_set = FUNC5(IBLOCK_BIO_POOL_SIZE, 0);
	if (!ib_dev->ibd_bio_set) {
		FUNC11("IBLOCK: Unable to create bioset\n");
		goto out;
	}

	FUNC10( "IBLOCK: Claiming struct block_device: %s\n",
			ib_dev->ibd_udev_path);

	mode = FMODE_READ|FMODE_EXCL;
	if (!ib_dev->ibd_readonly)
		mode |= FMODE_WRITE;

	bd = FUNC9(ib_dev->ibd_udev_path, mode, ib_dev);
	if (FUNC1(bd)) {
		ret = FUNC2(bd);
		goto out_free_bioset;
	}
	ib_dev->ibd_bd = bd;

	q = FUNC3(bd);

	dev->dev_attrib.hw_block_size = FUNC4(bd);
	dev->dev_attrib.hw_max_sectors = UINT_MAX;
	dev->dev_attrib.hw_queue_depth = q->nr_requests;

	/*
	 * Check if the underlying struct block_device request_queue supports
	 * the QUEUE_FLAG_DISCARD bit for UNMAP/WRITE_SAME in SCSI + TRIM
	 * in ATA and we need to set TPE=1
	 */
	if (FUNC7(q)) {
		dev->dev_attrib.max_unmap_lba_count =
				q->limits.max_discard_sectors;

		/*
		 * Currently hardcoded to 1 in Linux/SCSI code..
		 */
		dev->dev_attrib.max_unmap_block_desc_count = 1;
		dev->dev_attrib.unmap_granularity =
				q->limits.discard_granularity >> 9;
		dev->dev_attrib.unmap_granularity_alignment =
				q->limits.discard_alignment;

		FUNC10("IBLOCK: BLOCK Discard support available,"
				" disabled by default\n");
	}
	/*
	 * Enable write same emulation for IBLOCK and use 0xFFFF as
	 * the smaller WRITE_SAME(10) only has a two-byte block count.
	 */
	dev->dev_attrib.max_write_same_len = 0xFFFF;

	if (FUNC8(q))
		dev->dev_attrib.is_nonrot = 1;

	return 0;

out_free_bioset:
	FUNC6(ib_dev->ibd_bio_set);
	ib_dev->ibd_bio_set = NULL;
out:
	return ret;
}