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
struct list_head {int dummy; } ;
struct TYPE_4__ {struct list_head* next; } ;
struct TYPE_3__ {int /*<<< orphan*/  nWaitSend; TYPE_2__ SendWaitQueue; } ;
struct et131x_adapter {int /*<<< orphan*/  SendWaitLock; TYPE_1__ TxRing; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct et131x_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct et131x_adapter *etdev)
{
	unsigned long flags;

	FUNC2(&etdev->SendWaitLock, flags);

	while (!FUNC1(&etdev->TxRing.SendWaitQueue) &&
				FUNC0(etdev)) {
		struct list_head *entry;

		entry = etdev->TxRing.SendWaitQueue.next;

		etdev->TxRing.nWaitSend--;
	}

	FUNC3(&etdev->SendWaitLock, flags);
}