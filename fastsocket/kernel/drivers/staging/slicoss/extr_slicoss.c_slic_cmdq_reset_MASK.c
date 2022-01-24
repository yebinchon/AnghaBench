#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct slic_hostcmd {struct slic_hostcmd* next_all; struct slic_hostcmd* next; struct sk_buff* skb; scalar_t__ busy; } ;
struct sk_buff {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct TYPE_12__ {scalar_t__ count; TYPE_5__ lock; struct slic_hostcmd* head; int /*<<< orphan*/ * tail; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  lock; } ;
struct TYPE_10__ {scalar_t__ count; TYPE_3__ lock; int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; } ;
struct TYPE_8__ {scalar_t__ count; struct slic_hostcmd* head; } ;
struct adapter {TYPE_6__ cmdq_free; TYPE_4__ cmdq_done; TYPE_2__ cmdq_all; TYPE_1__* netdev; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct adapter *adapter)
{
	struct slic_hostcmd *hcmd;
	struct sk_buff *skb;
	u32 outstanding;

	FUNC3(&adapter->cmdq_free.lock.lock,
			adapter->cmdq_free.lock.flags);
	FUNC3(&adapter->cmdq_done.lock.lock,
			adapter->cmdq_done.lock.flags);
	outstanding = adapter->cmdq_all.count - adapter->cmdq_done.count;
	outstanding -= adapter->cmdq_free.count;
	hcmd = adapter->cmdq_all.head;
	while (hcmd) {
		if (hcmd->busy) {
			skb = hcmd->skb;
			FUNC0(skb);
			hcmd->busy = 0;
			hcmd->skb = NULL;
			FUNC2(skb);
		}
		hcmd = hcmd->next_all;
	}
	adapter->cmdq_free.count = 0;
	adapter->cmdq_free.head = NULL;
	adapter->cmdq_free.tail = NULL;
	adapter->cmdq_done.count = 0;
	adapter->cmdq_done.head = NULL;
	adapter->cmdq_done.tail = NULL;
	adapter->cmdq_free.head = adapter->cmdq_all.head;
	hcmd = adapter->cmdq_all.head;
	while (hcmd) {
		adapter->cmdq_free.count++;
		hcmd->next = hcmd->next_all;
		hcmd = hcmd->next_all;
	}
	if (adapter->cmdq_free.count != adapter->cmdq_all.count) {
		FUNC1(&adapter->netdev->dev,
			"free_count %d != all count %d\n",
			adapter->cmdq_free.count, adapter->cmdq_all.count);
	}
	FUNC4(&adapter->cmdq_done.lock.lock,
				adapter->cmdq_done.lock.flags);
	FUNC4(&adapter->cmdq_free.lock.lock,
				adapter->cmdq_free.lock.flags);
}