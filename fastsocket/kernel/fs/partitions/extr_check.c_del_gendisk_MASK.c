#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct hd_struct {int /*<<< orphan*/  partno; } ;
struct TYPE_5__ {int /*<<< orphan*/  holder_dir; scalar_t__ stamp; } ;
struct gendisk {int /*<<< orphan*/ * driverfs_dev; int /*<<< orphan*/  slave_dir; TYPE_1__ part0; int /*<<< orphan*/  flags; } ;
struct disk_part_iter {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  devt; } ;

/* Variables and functions */
 int DISK_PITER_INCL_EMPTY ; 
 int DISK_PITER_REVERSE ; 
 int /*<<< orphan*/  GENHD_FL_UP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  block_depr ; 
 int /*<<< orphan*/  FUNC1 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (struct disk_part_iter*) ; 
 int /*<<< orphan*/  FUNC5 (struct disk_part_iter*,struct gendisk*,int) ; 
 struct hd_struct* FUNC6 (struct disk_part_iter*) ; 
 TYPE_2__* FUNC7 (struct gendisk*) ; 
 int /*<<< orphan*/  FUNC8 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct gendisk*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct gendisk*) ; 

void FUNC14(struct gendisk *disk)
{
	struct disk_part_iter piter;
	struct hd_struct *part;

	/* invalidate stuff */
	FUNC5(&piter, disk,
			     DISK_PITER_INCL_EMPTY | DISK_PITER_REVERSE);
	while ((part = FUNC6(&piter))) {
		FUNC8(disk, part->partno);
		FUNC1(disk, part->partno);
	}
	FUNC4(&piter);

	FUNC8(disk, 0);
	FUNC11(disk, 0);
	disk->flags &= ~GENHD_FL_UP;
	FUNC13(disk);
	FUNC10(&disk->part0, 0);
	disk->part0.stamp = 0;

	FUNC9(disk->part0.holder_dir);
	FUNC9(disk->slave_dir);
	disk->driverfs_dev = NULL;
#ifndef CONFIG_SYSFS_DEPRECATED
	FUNC12(block_depr, FUNC2(FUNC7(disk)));
#endif
	FUNC3(FUNC7(disk));
	FUNC0(FUNC7(disk)->devt);
}