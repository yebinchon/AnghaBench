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
struct se_cmd {int /*<<< orphan*/  t_task_lba; int /*<<< orphan*/  se_dev; } ;
struct iblock_dev {int /*<<< orphan*/  ibd_bd; } ;
typedef  int /*<<< orphan*/  sense_reason_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GOOD ; 
 struct iblock_dev* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static sense_reason_t
FUNC5(struct se_cmd *cmd)
{
	struct iblock_dev *ib_dev = FUNC0(cmd->se_dev);
	int rc;

	rc = FUNC1(ib_dev->ibd_bd, cmd->t_task_lba,
			FUNC3(cmd), GFP_KERNEL, 0);
	if (rc < 0) {
		FUNC2("blkdev_issue_discard() failed: %d\n", rc);
		return TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE;
	}

	FUNC4(cmd, GOOD);
	return 0;
}