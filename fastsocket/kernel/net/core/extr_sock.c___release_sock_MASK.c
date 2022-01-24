#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * tail; struct sk_buff* head; } ;
struct sock {TYPE_2__ sk_backlog; } ;
struct sk_buff {struct sk_buff* next; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct TYPE_6__ {TYPE_1__ sk_backlog; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct sock*,struct sk_buff*) ; 
 TYPE_3__* FUNC4 (struct sock*) ; 

__attribute__((used)) static void FUNC5(struct sock *sk)
{
	struct sk_buff *skb = sk->sk_backlog.head;

	do {
		sk->sk_backlog.head = sk->sk_backlog.tail = NULL;
		FUNC1(sk);

		do {
			struct sk_buff *next = skb->next;

			skb->next = NULL;
			FUNC3(sk, skb);

			/*
			 * We are in process context here with softirqs
			 * disabled, use cond_resched_softirq() to preempt.
			 * This is safe to do because we've taken the backlog
			 * queue private:
			 */
			FUNC2();

			skb = next;
		} while (skb != NULL);

		FUNC0(sk);
	} while ((skb = sk->sk_backlog.head) != NULL);

	/*
	 * Doing the zeroing here guarantee we can not loop forever
	 * while a wild producer attempts to flood us.
	 */
	FUNC4(sk)->sk_backlog.len = 0;
}