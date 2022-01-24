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
struct se_device {int /*<<< orphan*/  delayed_cmd_lock; int /*<<< orphan*/  delayed_cmd_list; int /*<<< orphan*/  dev_ordered_sync; int /*<<< orphan*/  simple_cmds; TYPE_1__* transport; } ;
struct se_cmd {int sam_task_attr; int /*<<< orphan*/  se_ordered_id; int /*<<< orphan*/ * t_task_cdb; int /*<<< orphan*/  se_delayed_node; struct se_device* se_dev; } ;
struct TYPE_2__ {scalar_t__ transport_type; } ;

/* Variables and functions */
#define  MSG_HEAD_TAG 129 
#define  MSG_ORDERED_TAG 128 
 scalar_t__ TRANSPORT_PLUGIN_PHBA_PDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC7(struct se_cmd *cmd)
{
	struct se_device *dev = cmd->se_dev;

	if (dev->transport->transport_type == TRANSPORT_PLUGIN_PHBA_PDEV)
		return false;

	/*
	 * Check for the existence of HEAD_OF_QUEUE, and if true return 1
	 * to allow the passed struct se_cmd list of tasks to the front of the list.
	 */
	switch (cmd->sam_task_attr) {
	case MSG_HEAD_TAG:
		FUNC3("Added HEAD_OF_QUEUE for CDB: 0x%02x, "
			 "se_ordered_id: %u\n",
			 cmd->t_task_cdb[0], cmd->se_ordered_id);
		return false;
	case MSG_ORDERED_TAG:
		FUNC0(&dev->dev_ordered_sync);
		FUNC4();

		FUNC3("Added ORDERED for CDB: 0x%02x to ordered list, "
			 " se_ordered_id: %u\n",
			 cmd->t_task_cdb[0], cmd->se_ordered_id);

		/*
		 * Execute an ORDERED command if no other older commands
		 * exist that need to be completed first.
		 */
		if (!FUNC1(&dev->simple_cmds))
			return false;
		break;
	default:
		/*
		 * For SIMPLE and UNTAGGED Task Attribute commands
		 */
		FUNC0(&dev->simple_cmds);
		FUNC4();
		break;
	}

	if (FUNC1(&dev->dev_ordered_sync) == 0)
		return false;

	FUNC5(&dev->delayed_cmd_lock);
	FUNC2(&cmd->se_delayed_node, &dev->delayed_cmd_list);
	FUNC6(&dev->delayed_cmd_lock);

	FUNC3("Added CDB: 0x%02x Task Attr: 0x%02x to"
		" delayed CMD list, se_ordered_id: %u\n",
		cmd->t_task_cdb[0], cmd->sam_task_attr,
		cmd->se_ordered_id);
	return true;
}