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
struct TYPE_4__ {unsigned long data; int /*<<< orphan*/  function; scalar_t__ expires; } ;
struct sock {TYPE_2__ sk_timer; int /*<<< orphan*/  sk_receive_queue; } ;
struct sk_buff {struct sock* sk; } ;
struct TYPE_3__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  SOCK_DEAD ; 
 int /*<<< orphan*/  X25_STATE_0 ; 
 int /*<<< orphan*/  FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  x25_destroy_timer ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 TYPE_1__* FUNC8 (struct sock*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (struct sock*) ; 
 int /*<<< orphan*/  FUNC11 (struct sock*) ; 

__attribute__((used)) static void FUNC12(struct sock *sk)
{
	struct sk_buff *skb;

	FUNC10(sk);
	FUNC11(sk);

	FUNC7(sk);
	FUNC6(sk);		/* Flush the queues */

	while ((skb = FUNC4(&sk->sk_receive_queue)) != NULL) {
		if (skb->sk != sk) {		/* A pending connection */
			/*
			 * Queue the unaccepted socket for death
			 */
			FUNC5(skb->sk, SOCK_DEAD);
			FUNC9(skb->sk);
			FUNC8(skb->sk)->state = X25_STATE_0;
		}

		FUNC2(skb);
	}

	if (FUNC3(sk)) {
		/* Defer: outstanding buffers */
		sk->sk_timer.expires  = jiffies + 10 * HZ;
		sk->sk_timer.function = x25_destroy_timer;
		sk->sk_timer.data = (unsigned long)sk;
		FUNC1(&sk->sk_timer);
	} else {
		/* drop last reference so sock_put will free */
		FUNC0(sk);
	}
}