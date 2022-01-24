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
struct scrub_dev {TYPE_2__* dev; } ;
struct scrub_bio {int err; int /*<<< orphan*/  work; struct bio* bio; struct scrub_dev* sdev; } ;
struct btrfs_fs_info {int /*<<< orphan*/  scrub_workers; } ;
struct bio {struct scrub_bio* bi_private; } ;
struct TYPE_4__ {TYPE_1__* dev_root; } ;
struct TYPE_3__ {struct btrfs_fs_info* fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct bio *bio, int err)
{
	struct scrub_bio *sbio = bio->bi_private;
	struct scrub_dev *sdev = sbio->sdev;
	struct btrfs_fs_info *fs_info = sdev->dev->dev_root->fs_info;

	sbio->err = err;
	sbio->bio = bio;

	FUNC0(&fs_info->scrub_workers, &sbio->work);
}