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
struct slic_rcvqueue {scalar_t__ count; struct sk_buff* head; int /*<<< orphan*/ * tail; } ;
struct sk_buff {struct sk_buff* next; } ;
struct adapter {struct slic_rcvqueue rcvqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC1(struct adapter *adapter)
{
	struct slic_rcvqueue *rcvq = &adapter->rcvqueue;
	struct sk_buff *skb;

	while (rcvq->head) {
		skb = rcvq->head;
		rcvq->head = rcvq->head->next;
		FUNC0(skb);
	}
	rcvq->tail = NULL;
	rcvq->head = NULL;
	rcvq->count = 0;
}