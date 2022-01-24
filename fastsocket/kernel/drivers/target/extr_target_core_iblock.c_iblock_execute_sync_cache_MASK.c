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
struct se_cmd {int* t_task_cdb; int /*<<< orphan*/  se_dev; } ;
struct iblock_dev {int /*<<< orphan*/  ibd_bd; } ;
struct bio {struct se_cmd* bi_private; int /*<<< orphan*/  bi_bdev; int /*<<< orphan*/  bi_end_io; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct iblock_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SAM_STAT_GOOD ; 
 int /*<<< orphan*/  WRITE_FLUSH ; 
 struct bio* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iblock_end_io_flush ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sense_reason_t
FUNC4(struct se_cmd *cmd)
{
	struct iblock_dev *ib_dev = FUNC0(cmd->se_dev);
	int immed = (cmd->t_task_cdb[1] & 0x2);
	struct bio *bio;

	/*
	 * If the Immediate bit is set, queue up the GOOD response
	 * for this SYNCHRONIZE_CACHE op.
	 */
	if (immed)
		FUNC3(cmd, SAM_STAT_GOOD);

	bio = FUNC1(GFP_KERNEL, 0);
	bio->bi_end_io = iblock_end_io_flush;
	bio->bi_bdev = ib_dev->ibd_bd;
	if (!immed)
		bio->bi_private = cmd;
	FUNC2(WRITE_FLUSH, bio);
	return 0;
}