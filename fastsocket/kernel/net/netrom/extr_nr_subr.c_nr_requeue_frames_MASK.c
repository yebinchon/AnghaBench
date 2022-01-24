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
 TYPE_1__* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,struct sk_buff*,int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct sk_buff*) ; 

void FUNC4(struct sock *sk)
{
	struct sk_buff *skb, *skb_prev = NULL;

	while ((skb = FUNC2(&FUNC0(sk)->ack_queue)) != NULL) {
		if (skb_prev == NULL)
			FUNC3(&sk->sk_write_queue, skb);
		else
			FUNC1(skb_prev, skb, &sk->sk_write_queue);
		skb_prev = skb;
	}
}