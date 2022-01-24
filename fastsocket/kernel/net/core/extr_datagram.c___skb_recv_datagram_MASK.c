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
struct sk_buff {int peeked; int /*<<< orphan*/  users; } ;

/* Variables and functions */
 int EAGAIN ; 
 unsigned int MSG_DONTWAIT ; 
 unsigned int MSG_PEEK ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct sk_buff* FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct sock*) ; 
 long FUNC4 (struct sock*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,int*,long*) ; 

struct sk_buff *FUNC8(struct sock *sk, unsigned flags,
				    int *peeked, int *err)
{
	struct sk_buff *skb;
	long timeo;
	/*
	 * Caller is allowed not to check sk->sk_err before skb_recv_datagram()
	 */
	int error = FUNC3(sk);

	if (error)
		goto no_packet;

	timeo = FUNC4(sk, flags & MSG_DONTWAIT);

	do {
		/* Again only user level code calls this function, so nothing
		 * interrupt level will suddenly eat the receive_queue.
		 *
		 * Look at current nfs client by the way...
		 * However, this function was corrent in any case. 8)
		 */
		unsigned long cpu_flags;

		FUNC5(&sk->sk_receive_queue.lock, cpu_flags);
		skb = FUNC2(&sk->sk_receive_queue);
		if (skb) {
			*peeked = skb->peeked;
			if (flags & MSG_PEEK) {
				skb->peeked = 1;
				FUNC1(&skb->users);
			} else
				FUNC0(skb, &sk->sk_receive_queue);
		}
		FUNC6(&sk->sk_receive_queue.lock, cpu_flags);

		if (skb)
			return skb;

		/* User doesn't want to wait */
		error = -EAGAIN;
		if (!timeo)
			goto no_packet;

	} while (!FUNC7(sk, err, &timeo));

	return NULL;

no_packet:
	*err = error;
	return NULL;
}