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
struct slic_rcvqueue {scalar_t__ count; scalar_t__ errors; struct sk_buff* head; } ;
struct slic_rcvbuf {int status; } ;
struct sk_buff {struct sk_buff* next; scalar_t__ head; } ;
struct adapter {TYPE_1__* netdev; struct slic_rcvqueue rcvqueue; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct slic_rcvbuf*) ; 
 int IRHDDR_SVALID ; 
 scalar_t__ SLIC_RCVQ_FILLTHRESH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,struct slic_rcvqueue*,scalar_t__) ; 
 int FUNC2 (struct adapter*) ; 

__attribute__((used)) static struct sk_buff *FUNC3(struct adapter *adapter)
{
	struct slic_rcvqueue *rcvq = &adapter->rcvqueue;
	struct sk_buff *skb;
	struct slic_rcvbuf *rcvbuf;
	int count;

	if (rcvq->count) {
		skb = rcvq->head;
		rcvbuf = (struct slic_rcvbuf *)skb->head;
		FUNC0(rcvbuf);

		if (rcvbuf->status & IRHDDR_SVALID) {
			rcvq->head = rcvq->head->next;
			skb->next = NULL;
			rcvq->count--;
		} else {
			skb = NULL;
		}
	} else {
		FUNC1(&adapter->netdev->dev,
			"RcvQ Empty!! rcvq[%p] count[%x]\n", rcvq, rcvq->count);
		skb = NULL;
	}
	while (rcvq->count < SLIC_RCVQ_FILLTHRESH) {
		count = FUNC2(adapter);
		if (!count)
			break;
	}
	if (skb)
		rcvq->errors = 0;
	return skb;
}