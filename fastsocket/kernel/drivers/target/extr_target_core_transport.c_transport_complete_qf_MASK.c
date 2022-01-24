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
struct se_cmd {int se_cmd_flags; int data_direction; int /*<<< orphan*/  se_dev; TYPE_1__* se_tfo; int /*<<< orphan*/  t_bidi_data_sg; } ;
struct TYPE_2__ {int (* queue_status ) (struct se_cmd*) ;int (* queue_data_in ) (struct se_cmd*) ;} ;

/* Variables and functions */
#define  DMA_FROM_DEVICE 130 
#define  DMA_NONE 129 
#define  DMA_TO_DEVICE 128 
 int SCF_TRANSPORT_TASK_SENSE ; 
 int FUNC0 (struct se_cmd*) ; 
 int FUNC1 (struct se_cmd*) ; 
 int FUNC2 (struct se_cmd*) ; 
 int FUNC3 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct se_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct se_cmd*) ; 

__attribute__((used)) static void FUNC8(struct se_cmd *cmd)
{
	int ret = 0;

	FUNC5(cmd);

	if (cmd->se_cmd_flags & SCF_TRANSPORT_TASK_SENSE) {
		ret = cmd->se_tfo->queue_status(cmd);
		if (ret)
			goto out;
	}

	switch (cmd->data_direction) {
	case DMA_FROM_DEVICE:
		ret = cmd->se_tfo->queue_data_in(cmd);
		break;
	case DMA_TO_DEVICE:
		if (cmd->t_bidi_data_sg) {
			ret = cmd->se_tfo->queue_data_in(cmd);
			if (ret < 0)
				break;
		}
		/* Fall through for DMA_TO_DEVICE */
	case DMA_NONE:
		ret = cmd->se_tfo->queue_status(cmd);
		break;
	default:
		break;
	}

out:
	if (ret < 0) {
		FUNC6(cmd, cmd->se_dev);
		return;
	}
	FUNC7(cmd);
	FUNC4(cmd);
}