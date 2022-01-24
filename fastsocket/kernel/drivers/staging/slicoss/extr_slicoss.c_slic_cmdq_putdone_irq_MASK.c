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
struct slic_hostcmd {struct slic_hostcmd* next; scalar_t__ busy; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct slic_cmdqueue {int count; TYPE_1__ lock; struct slic_hostcmd* head; } ;
struct adapter {int /*<<< orphan*/  netdev; scalar_t__ xmitq_full; struct slic_cmdqueue cmdq_done; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct adapter *adapter,
				struct slic_hostcmd *cmd)
{
	struct slic_cmdqueue *cmdq = &adapter->cmdq_done;

	FUNC1(&cmdq->lock.lock);
	cmd->busy = 0;
	cmd->next = cmdq->head;
	cmdq->head = cmd;
	cmdq->count++;
	if ((adapter->xmitq_full) && (cmdq->count > 10))
		FUNC0(adapter->netdev);
	FUNC2(&cmdq->lock.lock);
}