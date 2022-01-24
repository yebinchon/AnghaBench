#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct sock {TYPE_1__ sk_receive_queue; } ;
struct sk_buff {int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int ENOENT ; 
 unsigned int MSG_PEEK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 struct sk_buff* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct sock *sk, struct sk_buff *skb, unsigned int flags)
{
	int err = 0;

	if (flags & MSG_PEEK) {
		err = -ENOENT;
		FUNC5(&sk->sk_receive_queue.lock);
		if (skb == FUNC4(&sk->sk_receive_queue)) {
			FUNC0(skb, &sk->sk_receive_queue);
			FUNC1(&skb->users);
			err = 0;
		}
		FUNC6(&sk->sk_receive_queue.lock);
	}

	FUNC2(skb);
	FUNC3(sk);

	return err;
}