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
struct sk_buff {int dummy; } ;
struct lapb_cb {int /*<<< orphan*/  write_queue; int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC3(struct lapb_cb *lapb)
{
	struct sk_buff *skb, *skb_prev = NULL;

	/*
	 * Requeue all the un-ack-ed frames on the output queue to be picked
	 * up by lapb_kick called from the timer. This arrangement handles the
	 * possibility of an empty output queue.
	 */
	while ((skb = FUNC1(&lapb->ack_queue)) != NULL) {
		if (!skb_prev)
			FUNC2(&lapb->write_queue, skb);
		else
			FUNC0(skb_prev, skb, &lapb->write_queue);
		skb_prev = skb;
	}
}