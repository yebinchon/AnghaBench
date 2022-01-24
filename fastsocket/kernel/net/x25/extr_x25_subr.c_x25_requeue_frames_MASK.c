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
struct sock {int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  ack_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 

void FUNC4(struct sock *sk)
{
	struct sk_buff *skb, *skb_prev = NULL;

	/*
	 * Requeue all the un-ack-ed frames on the output queue to be picked
	 * up by x25_kick. This arrangement handles the possibility of an empty
	 * output queue.
	 */
	while ((skb = FUNC1(&FUNC3(sk)->ack_queue)) != NULL) {
		if (!skb_prev)
			FUNC2(&sk->sk_write_queue, skb);
		else
			FUNC0(skb_prev, skb, &sk->sk_write_queue);
		skb_prev = skb;
	}
}