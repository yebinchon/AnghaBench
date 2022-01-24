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
struct se_cmd {int /*<<< orphan*/  se_dev; } ;
struct iblock_dev {int /*<<< orphan*/  ibd_bio_set; } ;
struct bio {struct se_cmd* bi_private; } ;

/* Variables and functions */
 struct iblock_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct bio *bio)
{
	struct se_cmd *cmd = bio->bi_private;
	struct iblock_dev *ib_dev = FUNC0(cmd->se_dev);

	FUNC1(bio, ib_dev->ibd_bio_set);
}