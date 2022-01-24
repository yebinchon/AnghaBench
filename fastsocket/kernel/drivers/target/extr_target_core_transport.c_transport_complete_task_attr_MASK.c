#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct se_device {int /*<<< orphan*/  dev_cur_ordered_id; int /*<<< orphan*/  dev_ordered_sync; int /*<<< orphan*/  simple_cmds; TYPE_1__* transport; } ;
struct se_cmd {scalar_t__ sam_task_attr; int /*<<< orphan*/  se_ordered_id; struct se_device* se_dev; } ;
struct TYPE_2__ {scalar_t__ transport_type; } ;

/* Variables and functions */
 scalar_t__ MSG_HEAD_TAG ; 
 scalar_t__ MSG_ORDERED_TAG ; 
 scalar_t__ MSG_SIMPLE_TAG ; 
 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct se_device*) ; 

__attribute__((used)) static void FUNC4(struct se_cmd *cmd)
{
	struct se_device *dev = cmd->se_dev;

	if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV)
		return;

	if (cmd->sam_task_attr == MSG_SIMPLE_TAG) {
		FUNC0(&dev->simple_cmds);
		FUNC2();
		dev->dev_cur_ordered_id++;
		FUNC1("Incremented dev->dev_cur_ordered_id: %u for"
			" SIMPLE: %u\n", dev->dev_cur_ordered_id,
			cmd->se_ordered_id);
	} else if (cmd->sam_task_attr == MSG_HEAD_TAG) {
		dev->dev_cur_ordered_id++;
		FUNC1("Incremented dev_cur_ordered_id: %u for"
			" HEAD_OF_QUEUE: %u\n", dev->dev_cur_ordered_id,
			cmd->se_ordered_id);
	} else if (cmd->sam_task_attr == MSG_ORDERED_TAG) {
		FUNC0(&dev->dev_ordered_sync);
		FUNC2();

		dev->dev_cur_ordered_id++;
		FUNC1("Incremented dev_cur_ordered_id: %u for ORDERED:"
			" %u\n", dev->dev_cur_ordered_id, cmd->se_ordered_id);
	}

	FUNC3(dev);
}