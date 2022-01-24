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
typedef  int /*<<< orphan*/  u32 ;
struct slic_hostcmd {struct slic_hostcmd* next; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct slic_cmdqueue {TYPE_1__ lock; struct slic_hostcmd* head; int /*<<< orphan*/  count; } ;
struct adapter {struct slic_cmdqueue cmdq_free; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct adapter*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 
 int /*<<< orphan*/ * FUNC2 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct slic_hostcmd *FUNC5(struct adapter *adapter)
{
	struct slic_cmdqueue *cmdq = &adapter->cmdq_free;
	struct slic_hostcmd *cmd = NULL;

lock_and_retry:
	FUNC3(&cmdq->lock.lock, cmdq->lock.flags);
retry:
	cmd = cmdq->head;
	if (cmd) {
		cmdq->head = cmd->next;
		cmdq->count--;
		FUNC4(&cmdq->lock.lock, cmdq->lock.flags);
	} else {
		FUNC1(adapter);
		cmd = cmdq->head;
		if (cmd) {
			goto retry;
		} else {
			u32 *pageaddr;

			FUNC4(&cmdq->lock.lock,
						cmdq->lock.flags);
			pageaddr = FUNC2(adapter);
			if (pageaddr) {
				FUNC0(adapter, pageaddr);
				goto lock_and_retry;
			}
		}
	}
	return cmd;
}