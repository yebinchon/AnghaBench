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
typedef  scalar_t__ u32 ;
struct se_cmd {int /*<<< orphan*/  se_dev; } ;
struct iblock_dev {int /*<<< orphan*/  ibd_bd; int /*<<< orphan*/  ibd_bio_set; } ;
struct bio {int /*<<< orphan*/  bi_sector; int /*<<< orphan*/ * bi_end_io; int /*<<< orphan*/  bi_destructor; struct se_cmd* bi_private; int /*<<< orphan*/  bi_bdev; } ;
typedef  int /*<<< orphan*/  sector_t ;

/* Variables and functions */
 scalar_t__ BIO_MAX_PAGES ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 struct iblock_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iblock_bio_destructor ; 
 int /*<<< orphan*/  iblock_bio_done ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct bio *
FUNC3(struct se_cmd *cmd, sector_t lba, u32 sg_num)
{
	struct iblock_dev *ib_dev = FUNC0(cmd->se_dev);
	struct bio *bio;

	/*
	 * Only allocate as many vector entries as the bio code allows us to,
	 * we'll loop later on until we have handled the whole request.
	 */
	if (sg_num > BIO_MAX_PAGES)
		sg_num = BIO_MAX_PAGES;

	bio = FUNC1(GFP_NOIO, sg_num, ib_dev->ibd_bio_set);
	if (!bio) {
		FUNC2("Unable to allocate memory for bio\n");
		return NULL;
	}

	bio->bi_bdev = ib_dev->ibd_bd;
	bio->bi_private = cmd;
	bio->bi_destructor = iblock_bio_destructor;
	bio->bi_end_io = &iblock_bio_done;
	bio->bi_sector = lba;

	return bio;
}