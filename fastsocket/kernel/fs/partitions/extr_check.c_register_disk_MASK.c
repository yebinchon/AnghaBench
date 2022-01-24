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
struct hd_struct {int dummy; } ;
struct TYPE_3__ {void* holder_dir; } ;
struct gendisk {int /*<<< orphan*/  flags; void* slave_dir; TYPE_1__ part0; int /*<<< orphan*/  disk_name; int /*<<< orphan*/  driverfs_dev; } ;
struct disk_part_iter {int dummy; } ;
struct device {int /*<<< orphan*/  kobj; int /*<<< orphan*/  parent; } ;
struct block_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FMODE_READ ; 
 int /*<<< orphan*/  GENHD_FL_INVALIDATED ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 struct block_device* FUNC0 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct block_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  block_depr ; 
 int /*<<< orphan*/  FUNC3 (struct device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int) ; 
 scalar_t__ FUNC5 (struct device*) ; 
 int /*<<< orphan*/  FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC8 (struct disk_part_iter*,struct gendisk*,int /*<<< orphan*/ ) ; 
 struct hd_struct* FUNC9 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC10 (struct gendisk*) ; 
 struct device* FUNC11 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC12 (struct gendisk*) ; 
 void* FUNC13 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC16 (struct hd_struct*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC18(struct gendisk *disk)
{
	struct device *ddev = FUNC11(disk);
	struct block_device *bdev;
	struct disk_part_iter piter;
	struct hd_struct *part;
	int err;

	ddev->parent = disk->driverfs_dev;

	FUNC3(ddev, "%s", disk->disk_name);

	/* delay uevents, until we scanned partition table */
	FUNC4(ddev, 1);

	if (FUNC5(ddev))
		return;
#ifndef CONFIG_SYSFS_DEPRECATED
	err = FUNC17(block_depr, &ddev->kobj,
				FUNC14(&ddev->kobj));
	if (err) {
		FUNC6(ddev);
		return;
	}
#endif
	disk->part0.holder_dir = FUNC13("holders", &ddev->kobj);
	disk->slave_dir = FUNC13("slaves", &ddev->kobj);

	/* No minors to use for partitions */
	if (!FUNC10(disk))
		goto exit;

	/* No such device (e.g., media were just removed) */
	if (!FUNC12(disk))
		goto exit;

	bdev = FUNC0(disk, 0);
	if (!bdev)
		goto exit;

	disk->flags |= GENHD_FL_INVALIDATED;
	err = FUNC1(bdev, FMODE_READ);
	if (err < 0)
		goto exit;
	FUNC2(bdev, FMODE_READ);

exit:
	/* announce disk after possible partitions are created */
	FUNC4(ddev, 0);
	FUNC15(&ddev->kobj, KOBJ_ADD);

	/* announce possible partitions */
	FUNC8(&piter, disk, 0);
	while ((part = FUNC9(&piter)))
		FUNC15(&FUNC16(part)->kobj, KOBJ_ADD);
	FUNC7(&piter);
}